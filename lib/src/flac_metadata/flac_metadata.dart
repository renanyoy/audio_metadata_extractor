// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/flac_metadata_block_stream_info.dart';

import 'package:audio_metadata_extractor/src/audio_metadata.dart';
import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';
import 'flac_metadata_block_picture.dart';
import 'flac_metadata_block_vorbis_comment.dart';

import 'flac_metadata_block.dart';
import 'flac_metadata_block_header.dart';

class FlacMetadata extends AudioMetadata {
  final List<FlacMetadataBlock> blocks;

  FlacMetadata(this.blocks);

  String? getText(String name) {
    for (var block in blocks) {
      if (block is FlacMetadataBlockVorbisComment) {
        var s = block.getValue(name);
        if (s != null) {
          return s;
        }
      }
    }
    return null;
  }

  @override
  String? get album => getText("ALBUM");

  @override
  String? get firstArtists => getText("ARTIST") ?? getText("PERFORMER");

  @override
  String? get secondArtists => getText("ACTOR");

  @override
  String? get composer => getText("COMPOSER");

  @override
  String? get date => getText("DATE");

  @override
  String? get language => null;

  @override
  String? get lyrics => null;

  @override
  String? get trackName => getText("TITLE");

  @override
  String? get trackNo => getText("TRACKNUMBER");

  @override
  String? get genres => getText("GENRE");

  @override
  String? get copyright => getText("COPYRIGHT");

  @override
  String? get publisher => getText("ORGANIZATION");

  @override
  List<int>? get coverData => blocks.mapFirst((block) {
        if (block is FlacMetadataBlockPicture) {
          return block.data;
        }
        return null;
      });

  @override
  Duration? get duration => blocks.mapFirst((block) {
        if (block is FlacMetadataBlockStreamInfo) {
          return Duration(milliseconds: block.durationMs());
        }
        return null;
      });

  @override
  String toString() =>
      'FlacMetadata(album: $album, firstArtists: $firstArtists, secondArtists: $secondArtists, composer: $composer, language: $language, trackName: $trackName, trackNo: $trackNo, date: $date, lyrics: $lyrics, copyright: $copyright, publisher: $publisher genres: $genres, cover: ${coverData?.length}, blocks: ${blocks.length})';

  static Future<FlacMetadata?> readFromFile(File file) async {
    return readFromRandomAccessFile(await file.open());
  }

  static Future<FlacMetadata?> readFromRandomAccessFile(
      RandomAccessFile file) async {
    var buff = await file.read(4);
    if (latin1.decode(buff) != "fLaC") {
      return null;
    }

    List<FlacMetadataBlock> blocks = [];
    FlacMetadataBlockHeader header;
    do {
      var buff = await file.read(4);
      header = FlacMetadataBlockHeader.parse(buff);
      var rawBlock = await file.read(header.length);
      var block = FlacMetadataBlock.parse(header, rawBlock);
      if (block != null) {
        blocks.add(block);
      }
    } while (!header.isLastMetadataBlock);
    return FlacMetadata(blocks);
  }

  static bool isMyFilename(String filename) {
    return isMyFileExt(filename.fileExt());
  }

  static bool isMyFileExt(String ext) {
    return ext == "flac";
  }
}
