// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:audio_metadata_extractor/src/aac_metadata/aac_mvhd_atom.dart';

import 'aac_meta_atom.dart';
import 'aac_metadata.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';

class AacReader {
  static const atomNameMVHD = "mvhd";
  static const atomNameFTYP = 'ftyp';
  static const atomNamePDIN = 'pdin';
  static const atomNameMOOV = 'moov';
  static const atomNameMOOF = 'moof';
  static const atomNameMFRA = 'mfra';
  static const atomNameFREE = 'free';
  static const atomNameSKIP = 'skip';
  static const atomNameJUNK = 'junk';
  static const atomNameWIDE = 'wide';
  static const atomNamePNOT = 'pnot';
  static const atomNamePICT = 'pict';
  static const atomNameMETA = 'meta';
  static const atomNameUDTA = 'udta';
  static const atomNameMECO = 'meco';
  static const atomNameUUID = 'uuid'; // Used by Sony's MSNV brand of MP4
  static const atomNameMDAT = 'mdat';

  AacMetaAtom? _meta;
  AacMvhdAtom? _mvhd;
  bool printDebug;

  AacReader({this.printDebug = false});

  //(int offset, int length)?
  bool findMeta(Uint8List buff, int offset, int length, String tab) {
    int startOffset = offset;
    while (offset - startOffset < length) {
      int size = bytesToInt(buff, offset, 4);
      if (size == 0) {
        break;
      }
      offset += 4;
      String atomType = latin1.decode(Uint8List.view(buff.buffer, offset, 4));
      offset += 4;
      int len;
      if (size == 1) {
        size = bytesToInt(buff, offset, 8);
        offset += 8;
        len = size - 16;
      } else {
        len = size - 8;
      }
      if (printDebug) {
        print("$tab$atomType:$size");
      }
      if (atomType == atomNameMVHD) {
        _mvhd ??= AacMvhdAtom.parse(buff, offset, len);
      } else if (atomType == "chpl") {
        // print("ATOM chpl $len");
      } else if (atomType == atomNameUDTA) {
        var res = findMeta(buff, offset, len, '$tab ');
        if (res) {
          return res;
        }
      } else if (atomType == atomNameMETA) {
        // return (offset, len);
        _meta ??= AacMetaAtom.parse(buff, offset, len);
      }
      offset += len;
    }
    return false;
  }

  Future<AacMetadata?> readFromFile(File file) async {
    return read(await file.open());
  }

  Future<AacMetadata?> read(RandomAccessFile file) async {
    do {
      int size = bytesToInt(await file.read(4));
      if (size == 0) {
        break;
      }
      String atomType = latin1.decode(await file.read(4));
      if (atomType == atomNameMDAT) {
        break;
      }
      Uint8List data;
      if (size == 1) {
        size = bytesToInt(await file.read(8));
        data = await file.read(size - 16);
      } else {
        data = await file.read(size - 8);
      }
      if (printDebug) {
        print("$atomType:${await file.position()}:$size");
      }
      if (atomType == atomNameMVHD) {
        _mvhd ??= AacMvhdAtom.parse(data, 0, data.length);
      } else if (atomType == atomNameMOOV || atomType == atomNameFREE) {
        findMeta(data, 0, data.length, ' ');
      } else if (atomType == atomNameMETA) {
        _meta = AacMetaAtom.parse(data, 0, data.length);
      }
    } while (true);
    return AacMetadata(_meta, _mvhd);
  }
}

/// This is a logical exception since an atom always needs to be at least 8 bytes in length to account for the
/// preamble. Therefore, if the size field is 1, load the 64-bit atom size from just after the atom type field.
/// If, on the other hand, the size field is 0, then the atom extends to the end of the file.
// class MpegAtom {
// bytes 0-3    atom size (including 8-byte size and type preamble)
// bytes 4-7    atom type
// bytes 8..n   data

// OR 64-bit atom size
// bytes 0-3    always 0x00000001
// bytes 4-7    atom type
// bytes 8-15   atom size (including 16-byte size and type preamble)
// bytes 16..n  data

// }