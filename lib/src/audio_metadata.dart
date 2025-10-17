import 'dart:convert';
import 'dart:io';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:audio_metadata_extractor/src/aac_metadata/aac_reader.dart';
import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';
import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/readers/http_random_access_file.dart';

import 'riff_metadata/riff_metadata.dart';

abstract class AudioMetadata {
  String? get trackName;
  String? get trackNo;
  String? get album;
  String? get firstArtists;
  String? get secondArtists;
  String? get composer;
  String? get language;
  String? get date;
  String? get lyrics;
  String? get copyright;
  String? get publisher;

  String? get genres;
  Duration? get duration;
  List<int>? get coverData;

  List<String> artists() {
    List<String> res = [];
    firstArtists
        ?.split(';')
        .forEach((element) => res.addIf(element.trim(), caseSensetive: false));
    return res;
  }

  static Future<AudioMetadata?> extract(
    File file, {
    String? filename,
    Encoding? ansiEncoding,
    bool forceDuration = false,
  }) async {
    return extractFromRandomAccessFile(
      await file.open(),
      filename: filename,
      ansiEncoding: ansiEncoding,
      forceDuration: forceDuration,
    );
  }

  static Future<AudioMetadata?> extractFromUri(
    Uri url, {
    String? filename,
    Encoding? ansiEncoding,
    bool forceDuration = false,
  }) async {
    final file = HttpRandomAccessFile(url);
    return extractFromRandomAccessFile(
      file,
      filename: filename,
      ansiEncoding: ansiEncoding,
      forceDuration: forceDuration,
    );
  }

  static Future<AudioMetadata?> extractFromRandomAccessFile(
    RandomAccessFile file, {
    String? filename,
    Encoding? ansiEncoding,
    bool forceDuration = false,
  }) async {
    filename ??= file.path;
    ansiEncoding ??= latin1;
    var fileExt = filename.fileExt();
    if (ID3Metadata.isMyFileExt(fileExt)) {
      var reader = ID3Reader(
          context:
              ID3Context(ansi: ansiEncoding, forceDuration: forceDuration));
      return await reader.read(file);
    } else if (AacMetadata.isMyFileExt(fileExt)) {
      return await AacReader().read(file);
    } else if (FlacMetadata.isMyFileExt(fileExt)) {
      return await FlacMetadata.readFromRandomAccessFile(file);
    } else if (RiffMetadata.isMyFileExt(fileExt)) {
      return await RiffMetadata.readFromRandomAccessFile(file);
    } else {
      return null;
    }
  }
}
