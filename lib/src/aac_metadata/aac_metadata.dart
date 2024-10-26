// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audio_metadata_extractor/src/aac_metadata/aac_genres.dart';
import 'package:audio_metadata_extractor/src/aac_metadata/aac_mvhd_atom.dart';
import 'package:audio_metadata_extractor/src/audio_metadata.dart';
import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_genres.dart';

import 'aac_atom_names.dart';
import 'aac_meta_atom.dart';

/// A 'meta' atom contains atoms containing human-readable textual data with
/// meta information regarding the file.
/// These atoms are marked with 4 bytes of course but the first byte is a
/// value of 0xA9. The remaining 3 characters can be: metaAtomName***
/// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data
class AacMetadata extends AudioMetadata {
  // final List<AacKeyValueAtom> atoms;
  final AacMetaAtom? meta;
  final AacMvhdAtom? mvhd;

  AacMetadata(this.meta, this.mvhd);

  // AacKeyValueAtom? getAtom(String name) =>
  //     atoms.findFirst((atom) => atom.atomType == name);

  // String? getText(List<String> names) => names
  //     .mapFirst(
  //         (name) => atoms.findFirst((atom) => atom.atomType == name)?.dataAtom)
  //     ?.valueStr;

  @override
  String? get album => meta?.getText([aacAtomNameStrAlbum]);

  @override
  String? get firstArtists => meta?.getText(
      [aacAtomNameStrArtist, aacAtomNameStrAlbumArtist, aacAtomNameStrAuthor]);

  @override
  String? get secondArtists => meta?.getText(["©nrt", aacAtomNameStrComposer2]);

  @override
  String? get composer =>
      meta?.getText([aacAtomNameStrComposer1, aacAtomNameStrComposer2]);

  @override
  String? get date => meta?.getText([aacAtomNameStrDate, aacAtomNameStrYear]);

  @override
  String? get language => null;

  @override
  String? get lyrics =>
      meta?.getText([aacAtomNameStrLyrics, aacAtomNameStrLyricsURI]);

  @override
  String? get trackName =>
      meta?.getText([aacAtomNameStrTrackTitle, aacAtomNameStrTrack]);

  @override
  String? get trackNo {
    var ints = meta?.getAtom(aacAtomNameIntsTrackNumber)?.dataAtom?.valueInts;
    return ints != null ? "${ints.first}/${ints.second}" : null;
  }

  @override
  String? get copyright => meta?.getText(["©cpy"]);

  @override
  String? get publisher => meta?.getText(["©pub"]);

  @override
  Duration? get duration {
    var seconds = mvhd?.calcDuration();
    return seconds != null
        ? Duration(milliseconds: (seconds * 1000).toInt())
        : null;
  }

  @override
  List<int>? get coverData =>
      meta?.getAtom(aacAtomNameCover)?.dataAtom?.valueRaw;

  @override
  String? get genres {
    var g = meta?.getAtom(aacAtomNameStrGenre)?.dataAtom?.valueStr;
    if (g != null) {
      return g;
    }
    var genId = meta?.getAtom(aacAtomNameIntGenreID)?.dataAtom?.valueInt;
    if (genId != null) {
      return aacGenres[genId]?.genre; // "Apple genID: $genId";
    }
    var genID3 = meta?.getAtom(aacAtomNameIntGenre)?.dataAtom?.valueInt;
    if (genID3 != null) {
      return id3Genres[genID3 - 1];
    }
    return null;
  }

  @override
  String toString() =>
      'AacMetadata(album: $album, firstArtists: $firstArtists, secondArtists: $secondArtists, composer: $composer, language: $language, trackName: $trackName, trackNo: $trackNo, date: $date, lyrics: $lyrics, copyright: $copyright, publisher: $publisher genres: $genres, cover: ${coverData?.length}, mvhd: $mvhd, meta: $meta)';

  static bool isMyFilename(String path) {
    return isMyFileExt(path.fileExt());
  }

  static bool isMyFileExt(String ext) {
    return ext == "aac" ||
        ext == "m4p" ||
        ext == "m4a" ||
        ext == "m4b" ||
        ext == "mp4" ||
        ext == "3gp";
  }
}
