import 'dart:io';

import 'package:audio_metadata_extractor/src/riff_metadata/riff_chunk.dart';

import '../../audio_metadata_extractor.dart';
import '../extensions/string_extension.dart';
import 'riff_audio_format.dart';

// http://soundfile.sapp.org/doc/WaveFormat/
// https://exiftool.org/TagNames/RIFF.html

class RiffMetadata extends AudioMetadata {
  final RiffAudioFormat audioFormat;
  final RiffRawlMeta? meta;
  RiffMetadata({required this.audioFormat, this.meta});
  @override
  String? get album => meta?.album;
  @override
  String? get firstArtists => meta?.artist;
  @override
  String? get secondArtists => null;
  @override
  String? get composer => null;
  @override
  String? get date => meta?.date;
  @override
  String? get language => meta?.language;
  @override
  String? get lyrics => null;
  @override
  String? get trackName => meta?.title;
  @override
  String? get trackNo => meta?.trackNumber;
  @override
  String? get genres => meta?.genre;
  @override
  String? get copyright => meta?.copyright;
  @override
  String? get publisher => null;
  @override
  List<int>? get coverData => null;
  @override
  Duration? duration;
  static Future<RiffMetadata?> readFromFile(File file) async {
    return readFromRandomAccessFile(await file.open());
  }

  static Future<RiffMetadata?> readFromRandomAccessFile(
      RandomAccessFile file) async {
    final riff = await RiffChunk.from(file: file, position: 0);
    if (riff.id != 'RIFF' && riff.info != 'WAVE') {
      return null;
    }
    int position = riff.data;
    RiffAudioFormat? audioFormat;
    RiffRawlMeta? meta;
    while (position < riff.end) {
      final chunk = await RiffChunk.from(file: file, position: position);
      switch (chunk.id) {
        case 'fmt ':
          audioFormat = await RiffAudioFormat.fromFile(file, chunk.data);
          break;
        case 'data':
          break;
        case 'LIST':
          if (chunk.info == 'INFO') {
            meta = await parseInfoList(file: file, list: chunk);
          }
          break;
        case 'INFO':
          break;
        default:
          break;
      }
      position = chunk.end;
    }
    if (audioFormat == null) return null;
    return RiffMetadata(audioFormat: audioFormat, meta: meta);
  }

  static Future<RiffRawlMeta> parseInfoList(
      {required RandomAccessFile file, required RiffChunk list}) async {
    RiffRawlMeta meta = RiffRawlMeta();
    int position = list.data;
    while (position < list.end) {
      final chunk = await RiffChunk.from(file: file, position: position);
      print(
          '${chunk.position - list.position} >> ${chunk.end - list.position} [${list.end - chunk.position}] "${chunk.id}" ${chunk.length}');
      switch (chunk.id) {
        case 'INAM':
        case 'TITL':
          meta.title ??= await chunk.readDataString(file: file);
          break;
        case 'IART':
          meta.artist = await chunk.readDataString(file: file);
          break;
        case 'IPRD':
          meta.album = await chunk.readDataString(file: file);
          break;
        case 'ICRD':
          meta.date = await chunk.readDataString(file: file);
          break;
        case 'ICMT':
        case 'CMNT':
        case 'COMM':
          meta.comment ??= await chunk.readDataString(file: file);
          break;
        case 'ITRK':
        case 'TRCK':
          meta.trackNumber ??= await chunk.readDataString(file: file);
          break;
        case 'ISFT':
          meta.encoder = await chunk.readDataString(file: file);
          break;
        case 'IGNR':
        case 'GENR':
          meta.genre ??= await chunk.readDataString(file: file);
          break;
        case 'LANG':
          meta.language = await chunk.readDataString(file: file);
          break;
        case 'ICOP':
          meta.copyright = await chunk.readDataString(file: file);
        default:
          print('unimplemented ${chunk.id}');
          break;
      }
      position = chunk.end;
    }
    return meta;
  }

  static bool isMyFilename(String filename) {
    return isMyFileExt(filename.fileExt());
  }

  static bool isMyFileExt(String ext) {
    return ext == "wav" || ext == "aiff";
  }
}

class RiffRawlMeta {
  String? title;
  String? artist;
  String? album;
  String? date;
  String? comment;
  String? trackNumber;
  String? language;
  String? copyright;
  String? encoder;
  String? genre;
}
