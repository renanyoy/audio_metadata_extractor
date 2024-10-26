// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_metadata.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';
import 'id3_comment.dart';
import 'id3_context.dart';
import 'id3_geob.dart';
import 'id3_picture.dart';
import 'id3_tag.dart';
import 'id3_text.dart';
import 'id3_url.dart';
import 'id3_user_text.dart';
import 'utils.dart';

class ID3Reader {
  static const headerSize = 10;
  static const headerIdentifier = "ID3";
  static const tagV2Size = 6;
  static const tagV3Size = 10;

  static const String tagIdTXXX = "TXXX";
  static const String tagIdWXXX = "WXXX";
  static const String tagIdGEOB = "GEOB";

  static const ignoreTags = [
    "PRIV", // Private frame
    "MCDI", // Music CD identifier
    "POPM", // Popularimeter
    "RBUF", // ‘Recommended buffer size’
  ];
  // IPLS - Involved people list

  final ID3Context context;

  ID3Reader({ID3Context? context})
      : context = context ?? ID3Context(forceDuration: false);

  Future<ID3Metadata> _parseID3version2(int flags, Uint8List buff) async {
    List<ID3Tag> res = [];
    // bool unsynchronisation = flags & 0x80 > 0;
    int offset = 0;
    do {
      // var tagId = latin1.decode(Uint8List.view(buff.buffer, offset, 3));
      offset += 3;
      var size = bytesToInt(buff, offset, 3);
      // print("Tag $tagId:$size");
      offset += 3;
      offset += size;
    } while (offset < buff.length);
    return ID3Metadata(res);
  }

  ID3Tag _parseTag(
      Uint8List buff, String tagId, int dataOffset, int dataLength) {
    if (tagId == ID3Picture.tagIdAPIC) {
      return ID3Picture.parse(buff, tagId, dataOffset, dataLength) ??
          ID3Tag(buff, tagId, dataOffset, dataLength);
    } else if (ID3Text.tags.contains(tagId)) {
      return ID3Text(context, buff, tagId, dataOffset, dataLength);
    } else if (tagId == ID3Comment.tagIdCOMM || tagId == ID3Comment.tagIdUSLT) {
      return ID3Comment(context, buff, tagId, dataOffset, dataLength);
    } else if (tagId == tagIdTXXX || tagId == tagIdWXXX) {
      return ID3UserText(context, buff, tagId, dataOffset, dataLength);
    } else if (tagId.startsWith("W")) {
      return ID3Url(context, buff, tagId, dataOffset, dataLength);
    } else if (tagId == tagIdGEOB) {
      return ID3Geob(context, buff, tagId, dataOffset, dataLength);
    } else if (ignoreTags.contains(tagId)) {
      // ignore
      return ID3Tag(buff, tagId, dataOffset, dataLength);
    } else {
      // print("Unknown tag $tagId:$size");
      return ID3Tag(buff, tagId, dataOffset, dataLength);
    }
  }

  Future<ID3Metadata> _parseID3version2_3(int flags, Uint8List buff) async {
    List<ID3Tag> res = [];
    // bool unsynchronisation = flags & 0x40 > 0;
    bool extendedHeader = flags & 0x20 > 0;
    int offset = 0;
    if (extendedHeader) {
      int extendedHeaderSize = bytesToInt(buff, offset, 4);
      // %x0000000 00000000
      // x - CRC data present (Total frame CRC $xx xx xx xx)
      offset += 4 + extendedHeaderSize;
    }
    do {
      var rawTagId = Uint8List.view(buff.buffer, offset, 4);
      if (rawTagId[0] == 0 &&
          rawTagId[1] == 0 &&
          rawTagId[2] == 0 &&
          rawTagId[3] == 0) {
        break;
      }
      var tagId = latin1.decode(rawTagId);
      offset += 4;
      var size = parseIntWithSync(buff, offset, false);
      offset += 4;
      // ignore: unused_local_variable
      int statusFlags = buff[offset];
      // %ijk00000
      // int formatFlags = buff[offset + 1];
      // bool compression = (formatFlags & 0x80) > 0;
      // bool encryption = (formatFlags & 0x40) > 0;
      // bool grouping = (formatFlags & 0x20) > 0;
      offset += 2;

      res.add(_parseTag(buff, tagId, offset, size));

      offset += size;
    } while (offset < buff.length);
    return ID3Metadata(res);
  }

  Future<ID3Metadata> _parseID3version2_4(int flags, Uint8List buff) async {
    List<ID3Tag> res = [];
    // bool unsynchronisation = flags & 0x80 > 0;
    bool extendedHeader = flags & 0x40 > 0;
    // bool experimentalIndicator = flags & 0x20 > 0;
    // bool footerPresent = flags & 0x10 > 0;
    int offset = 0;
    if (extendedHeader) {
      int extendedHeaderSize = parseIntWithSync(buff, offset, true);
      // int extendedFlags = buff[offset + 5];
      // %0bcd0000
      // b - Tag is an update (This flag has no corresponding data.)
      // c - CRC data present (Total frame CRC 5 * %0xxxxxxx)
      // d - Tag restrictions (Flag data length $01, %ppqrrstt)
      //    p - Tag size restrictions:
      //       00 - No more than 128 frames and 1 MB total tag size.
      //       01 - No more than 64 frames and 128 KB total tag size.,
      //       10 - No more than 32 frames and 40 KB total tag size.
      //       11 - No more than 32 frames and 4 KB total tag size.
      //   q - Text encoding restrictions
      //       0 - No restrictions
      //       1 - Strings are only encoded with ISO-8859-1 [ISO-8859-1] or UTF-8 [UTF-8].
      //   r - Text fields size restrictions
      //       00 - No restrictions
      //       01 - No string is longer than 1024 characters.
      //       10 - No string is longer than 128 characters.
      //       11 - No string is longer than 30 characters.
      //   s - Image encoding restrictions
      //       0 - No restrictions
      //       1 - Images are encoded only with PNG [PNG] or JPEG [JFIF].
      //   t - Image size restrictions
      //       00 - No restrictions
      //       01 - All images are 256x256 pixels or smaller.
      //       10 - All images are 64x64 pixels or smaller.
      //       11 - All images are exactly 64x64 pixels, unless required otherwise.
      offset += extendedHeaderSize;
    }
    do {
      var rawTagId = Uint8List.view(buff.buffer, offset, 4);
      if (rawTagId[0] == 0 &&
          rawTagId[1] == 0 &&
          rawTagId[2] == 0 &&
          rawTagId[3] == 0) {
        break;
      }
      var tagId = latin1.decode(rawTagId);
      offset += 4;
      var size = parseIntWithSync(buff, offset, true);
      // print("Tag $tagId:$size");
      offset += 4;
      // ignore: unused_local_variable
      int statusFlags = buff[offset];
      // int formatFlags = buff[offset + 1];
      // %0h00kmnp
      // bool grouping = (formatFlags & 0x40) > 0;
      // bool compression = (formatFlags & 0x8) > 0;
      // bool encryption = (formatFlags & 4) > 0;
      // bool unsynchronisationFrame = ((formatFlags & 0x2) > 0);
      // bool dataLength = (formatFlags & 0x1) > 0;
      offset += 2;

      res.add(_parseTag(buff, tagId, offset, size));

      offset += size;
    } while (offset < buff.length);
    return ID3Metadata(res);
  }

  Future<int> readBuff(RandomAccessFile file, List<int> buff) async {
    for (var i = 0; i < buff.length; i++) {
      buff[i] = await file.readByte();
      if (buff[i] < 0) {
        return i + 1;
      }
    }
    return buff.length;
  }

  Future<Duration?> _forceDuration(int offset, RandomAccessFile file) async {
    final scratch = List.filled(10, 0);
    int fileSize = await file.length();
    double duration = 0.0;
    while (offset + 10 < fileSize) {
      await file.setPosition(offset);
      var bytesRead = await file.readInto(scratch);
      if (bytesRead < 10) {
        return Duration(milliseconds: (duration * 1000).toInt());
      }

      // looking for 1111 1111 111 (frame synchronization bits)
      if (scratch[0] == 0xff && (scratch[1] & 0xe0) == 0xe0) {
        var b1 = scratch[1];
        var b2 = scratch[2];

        var versionBits = (b1 & 0x18) >> 3;
        var version = mp3Versions[versionBits];
        String? simpleVersion = (version == '2.5' ? "2" : version);

        var layerBits = (b1 & 0x06) >> 1;
        var layer = mp3Layers[layerBits];

        var bitRateKey = "V${simpleVersion}L$layer";
        var bitRateIndex = (b2 & 0xf0) >> 4;
        var bitRate = mp3Bitrates[bitRateKey]?.getOrNull(bitRateIndex) ?? 0;

        var sampleRateIdx = (b2 & 0x0c) >> 2;
        var sampleRate = mp3SampleRates[version]?.getOrNull(sampleRateIdx);

        var samples = mp3Samples[simpleVersion]?[layer];

        var paddingBit = (b2 & 0x02) >> 1;
        if (layer != null &&
            bitRate > 0 &&
            samples != null &&
            sampleRate != null) {
          int frameSize =
              calcMp3Framesize(layer, bitRate, sampleRate, paddingBit);

          offset += frameSize;
          duration += (samples / sampleRate);
        } else {
          print("Can't fetch duration! corrupt file?");
          offset++; // corrupt file?
          return null;
        }
      } else if (scratch[0] == 0x54 &&
          scratch[1] == 0x41 &&
          scratch[2] == 0x47) {
        // TAG
        offset += 128; // skip over id3v1 tag size
      } else {
        print("Can't fetch duration! corrupt file 2?");
        offset++; // corrupt file?
        return null;
      }
    }
    return Duration(milliseconds: (duration * 1000).toInt());
  }

  Future<Duration?> _estimateDuration(RandomAccessFile file) async {
    int? durationMs;
    int? avgDurationMs;
    int n = 0;
    int fileSize = await file.length();
    int? prevBitrate;

    int b0 = await file.readByte();
    while (true) {
      int b1 = await file.readByte();
      if (b0 == 0xFF && (b1 & 0xE0) != 0) {
        int b2 = await file.readByte();
        // ignore: unused_local_variable
        int b3 = await file.readByte();

        int versionBits = (b1 & 0x18) >> 3;
        String? version = mp3Versions[versionBits];
        String? simpleVersion = version == '2.5' ? "2" : version;

        int layerBits = (b1 & 0x06) >> 1;
        String? layer = mp3Layers[layerBits];

        // int protectionBit = (b1 & 0x01);
        String bitrateKey =
            "V${simpleVersion}L$layer"; //sprintf('V%dL%d', simple_version, layer);
        int bitrateIdx = (b2 & 0xf0) >> 4;
        int? bitrate = mp3Bitrates[bitrateKey]?.getOrNull(bitrateIdx) ?? 0;

        int sampleRateIdx = (b2 & 0x0c) >> 2; //0xc => b1100
        int? sampleRate =
            mp3SampleRates[version]?.getOrNull(sampleRateIdx); // ?? 0;
        int paddingBit = (b2 & 0x02) >> 1;
        // int privateBit = (b2 & 0x01);
        // int channelModeBits = (b3 & 0xc0) >> 6;
        // int modeExtensionBits = (b3 & 0x30) >> 4;
        // int copyrightBit = (b3 & 0x08) >> 3;
        // int originalBit = (b3 & 0x04) >> 2;
        // int emphasis = (b3 & 0x03);

        int? samples = mp3Samples[simpleVersion]?[layer];
        if (layer != null &&
            bitrate > 0 &&
            samples != null &&
            sampleRate != null) {
          // print(
          //     "layer: $layer, bitrate: $bitrate, samples: $samples, sampleRate: $sampleRate");
          if (prevBitrate != null && prevBitrate != bitrate) {
            durationMs = null;
            // print(
            //     "Various bitrate $prevBitrate -> $bitrate, can't estimate duration!");
            break;
          }
          prevBitrate = bitrate;
          int framesize =
              calcMp3Framesize(layer, bitrate, sampleRate, paddingBit);
          var frameDuration = samples / sampleRate;
          var frameCount = (fileSize / framesize);
          int duration = (frameCount * frameDuration * 1000).toInt();
          print(duration);
          n++;
          if (avgDurationMs == null) {
            avgDurationMs = duration;
          } else {
            avgDurationMs += duration;
          }
          durationMs = avgDurationMs ~/ n;
          // print(
          //     "$n: ${avgDurationMs / n} -- $durationMs / $avgDurationMs bitrate: $bitrate");
        }
        if (n >= 2 && (durationMs != null)) {
          break;
        }
        b1 = await file.readByte();
      }
      b0 = b1;
    }
    return durationMs != null ? Duration(milliseconds: durationMs) : null;
  }

  Future<ID3Metadata?> read(RandomAccessFile file) async {
    final rawHeader = await file.read(headerSize);

    if (latin1.decode(Uint8List.view(rawHeader.buffer, 0, 3)) !=
        headerIdentifier) {
      return null;
    }
    int version = rawHeader[3];
    int revision = rawHeader[4];
    // print("Version: $version, revision: $revision");
    if (version == 0xFF || revision == 0xFF) {
      return null;
    }
    int flags = rawHeader[5];
    // The first bit (bit 7) in the ‘ID3 flags’ is indicating whether or not unsynchronisation is used (see section 5 for details); a set bit indicates usage.
    // The second bit (bit 6) is indicating whether or not compression is used; a set bit indicates usage. Since no compression scheme has been decided yet, the ID3 decoder (for now) should just ignore the entire tag if the compression bit is set.

    int size = parseIntWithSync(rawHeader, 6, true);
    // print("Size: $size");
    final buff = await file.read(size);

    ID3Metadata? metadata;
    switch (version) {
      case 0x4:
        metadata = await _parseID3version2_4(flags, buff);
      case 0x3:
        metadata = await _parseID3version2_3(flags, buff);

      case 0x2:
        metadata = await _parseID3version2(flags, buff);
    }
    if (metadata != null) {
      if (context.forceDuration) {
        metadata.duration = await _forceDuration(size + headerSize, file);
      } else {
        metadata.duration = await _estimateDuration(file);
      }
    }
    // if (durationMs != null) {
    //   metadata?.duration = Duration(milliseconds: durationMs);
    //   // print("Duration: ${metadata?.duration}");
    // }
    return metadata;
  }

  static int calcMp3Framesize(
      String layer, int bitrate, int sampleRate, int paddingBit) {
    if (layer == '1') {
      return (((12 * bitrate * 1000 / sampleRate) + paddingBit) * 4).toInt();
    } else {
      //layer 2, 3
      return (((144 * bitrate * 1000) / sampleRate) + paddingBit).toInt();
    }
  }

  static Map<int, String> mp3Versions = {
    0x0: '2.5', 0x1: 'x', 0x2: '2', 0x3: '1', // x=>'reserved'
  };

  static Map<int, String> mp3Layers = {
    0x0: 'x', 0x1: '3', 0x2: '2', 0x3: '1', // x=>'reserved'
  };

  static Map<String, List<int>> mp3Bitrates = {
    'V1L1': [
      0,
      32,
      64,
      96,
      128,
      160,
      192,
      224,
      256,
      288,
      320,
      352,
      384,
      416,
      448
    ],
    'V1L2': [0, 32, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384],
    'V1L3': [0, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320],
    'V2L1': [0, 32, 48, 56, 64, 80, 96, 112, 128, 144, 160, 176, 192, 224, 256],
    'V2L2': [0, 8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160],
    'V2L3': [0, 8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160],
  };

  static Map<String, List<int>> mp3SampleRates = {
    '1': [44100, 48000, 32000],
    '2': [22050, 24000, 16000],
    '2.5': [11025, 12000, 8000],
  };

  static Map<String, Map<String, int>> mp3Samples = {
    "1": {
      "1": 384,
      "2": 1152,
      "3": 1152,
    }, //MPEGv1,     Layers 1,2,3
    "2": {
      "1": 384,
      "2": 1152,
      "3": 576,
    }, //MPEGv2/2.5, Layers 1,2,3
  };
}
