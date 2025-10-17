import 'dart:convert';
import 'dart:io';

import '../../audio_metadata_extractor.dart';
import '../extensions/string_extension.dart';

class RiffMetadataBlock {}

class RiffMetadata extends AudioMetadata {
  final List<RiffMetadataBlock> blocks;

  RiffMetadata(this.blocks);

  String? getText(String name) => null;

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
  List<int>? get coverData => null;

  @override
  Duration? get duration => null;

  static Future<RiffMetadata?> readFromFile(File file) async {
    return readFromRandomAccessFile(await file.open());
  }

  static Future<RiffMetadata?> readFromRandomAccessFile(
      RandomAccessFile file) async {
    var buff = await file.read(4);
    if (latin1.decode(buff) != "RIFF") {
      return null;
    }

    return RiffMetadata([]);
  }

  static bool isMyFilename(String filename) {
    return isMyFileExt(filename.fileExt());
  }

  static bool isMyFileExt(String ext) {
    return ext == "wav" || ext == "riff" || ext == "aiff";
  }
}
