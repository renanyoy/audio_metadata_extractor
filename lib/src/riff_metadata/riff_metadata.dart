import 'dart:io';

import 'package:audio_metadata_extractor/src/riff_metadata/riff_chunk.dart';

import '../../audio_metadata_extractor.dart';
import '../extensions/string_extension.dart';
import 'riff_audio_format.dart';

// http://soundfile.sapp.org/doc/WaveFormat/
// https://exiftool.org/TagNames/RIFF.html

class RiffMetadata extends AudioMetadata {
  final RiffAudioFormat audioFormat;
  final RiffRawlMeta meta;
  RiffMetadata({required this.audioFormat, required this.meta});
  @override
  String? get album => meta.album;
  @override
  String? get firstArtists => meta.artist;
  @override
  String? get secondArtists => null;
  @override
  String? get composer => meta.composer;
  @override
  String? get date => meta.date;
  @override
  String? get language => meta.language;
  @override
  String? get lyrics => meta.lyrics;
  @override
  String? get trackName => meta.title;
  @override
  String? get trackNo => meta.trackNumber;
  @override
  String? get genres => meta.genre;
  @override
  String? get copyright => meta.copyright;
  @override
  String? get publisher => meta.publisher;
  @override
  List<int>? get coverData => meta.cover;
  @override
  Duration? get duration => meta.duration;
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
    final meta = RiffRawlMeta();
    try {
      while (position < riff.end) {
        final chunk = await RiffChunk.from(file: file, position: position);
        switch (chunk.id) {
          case 'fmt ':
            audioFormat = await RiffAudioFormat.fromFile(file, chunk.data);
            break;
          case 'data':
            if (audioFormat != null) {
              meta.duration = audioFormat.duration(size: chunk.length);
            }
            break;
          case 'LIST':
            if (chunk.info == 'INFO') {
              await meta.parseInfoList(file: file, chunk: chunk);
            }
            break;
          case 'id3 ':
            await meta.parseID3(file: file, chunk: chunk);
            break;
          default:
            //print('unimplemented main chunk ${chunk.id}');
            break;
        }
        position = chunk.end;
      }
    } catch (error) {
      //print('$error'.split('\n')[0]);
      return null;
    }
    if (audioFormat == null) return null;
    return RiffMetadata(audioFormat: audioFormat, meta: meta);
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
  String? composer;
  String? lyrics;
  String? publisher;
  List<int>? cover;
  Duration? duration;
  bool get isEmpty =>
      title == null &&
      artist == null &&
      album == null &&
      date == null &&
      comment == null &&
      trackNumber == null &&
      language == null &&
      copyright == null &&
      encoder == null &&
      genre == null &&
      cover == null &&
      composer == null &&
      lyrics == null &&
      publisher == null &&
      duration == null;
  Future<void> parseID3({
    required RandomAccessFile file,
    required RiffChunk chunk,
  }) async {
    await file.setPosition(chunk.data);
    final reader = ID3Reader();
    final m = await reader.readEmbeded(file);
    if (m == null) return;
    album = m.album ?? album;
    artist = m.firstArtists ?? artist;
    copyright = m.copyright ?? copyright;
    date = m.date ?? date;
    language = m.language ?? language;
    title = m.trackName ?? title;
    trackNumber = m.trackNo ?? trackNumber;
    cover = m.coverData ?? cover;
    composer = m.composer ?? composer;
    lyrics = m.lyrics ?? lyrics;
    publisher = m.publisher ?? publisher;
  }

  Future<void> parseInfoList({
    required RandomAccessFile file,
    required RiffChunk chunk,
  }) async {
    int position = chunk.data;
    while (position < chunk.end) {
      final c = await RiffChunk.from(file: file, position: position);
      switch (c.id) {
        case 'INAM':
        case 'TITL':
          title ??= await c.readDataString(file: file);
          break;
        case 'IART':
          artist = await c.readDataString(file: file);
          break;
        case 'IPRD':
          album = await c.readDataString(file: file);
          break;
        case 'ICRD':
          date = await c.readDataString(file: file);
          break;
        case 'YEAR':
          date ??= await c.readDataString(file: file);
          break;
        case 'ICMT':
        case 'CMNT':
        case 'COMM':
          comment ??= await c.readDataString(file: file);
          break;
        case 'ITRK':
        case 'TRCK':
          trackNumber ??= await c.readDataString(file: file);
          break;
        case 'ISFT':
          encoder = await c.readDataString(file: file);
          break;
        case 'IGNR':
        case 'GENR':
          genre ??= await c.readDataString(file: file);
          break;
        case 'LANG':
          language = await c.readDataString(file: file);
          break;
        case 'ICOP':
          copyright = await c.readDataString(file: file);
        case 'PRT1':
        // part number
        case 'PRT2':
        // number of parts
        case 'IKEY':
        // keywords
        default:
          break;
      }
      // TODO: fix it, why it doesn't work without it ????
      await file.setPosition(c.data);
      await file.read(c.length);
      //
      position = c.end;
    }
  }
}
