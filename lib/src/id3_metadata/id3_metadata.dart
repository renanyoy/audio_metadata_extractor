// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audio_metadata_extractor/src/audio_metadata.dart';
import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';
import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_comment.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_picture.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_tag.dart';
import 'package:audio_metadata_extractor/src/id3_metadata/id3_text.dart';

class ID3Metadata extends AudioMetadata {
  final List<ID3Tag> tags;

  ID3Metadata(this.tags);

  T? findTag<T extends ID3Tag>(String tagId) {
    for (var tag in tags) {
      if (tag is T && tag.tagId == tagId) {
        return tag;
      }
    }
    return null;
  }

  ID3Text? getText(List<String> tagIds) =>
      tagIds.mapFirst((tag) => findTag<ID3Text>(tag));

  @override
  String? get album => getText(["TALB", "TOAL"])?.value;

  @override //, "TPE2", "TPE3", "TPE4"
  String? get firstArtists => getText(["TPE1"])?.value;

  @override //, "TPE3", "TPE4"
  String? get secondArtists => getText(["TPE2"])?.value;

  @override
  String? get composer => getText(["TCOM"])?.value;

  @override
  String? get language => getText(["TLAN"])?.value;

  @override
  String? get trackName => getText(["TIT2"])?.value;

  @override
  String? get trackNo => getText(["TRCK"])?.value;

  @override
  String? get date => getText(["TDAT", "TRDA", "TYER"])?.value;

  @override
  String? get copyright => getText(["TCOP"])?.value;

  @override
  String? get publisher => getText(["TPUB"])?.value;

  @override
  String? get lyrics =>
      findTag<ID3Comment>(ID3Comment.tagIdUSLT)?.lyrics ??
      getText(["TOLY", "TEXT"])?.value;

  @override
  String? get genres => getText(["TCON"])?.value;

  @override
  Duration? duration;

  @override
  List<int>? get coverData =>
      findTag<ID3Picture>(ID3Picture.tagIdAPIC)?.pictureData;

  @override
  String toString() =>
      'ID3Metadata(album: $album, firstArtists: $firstArtists, secondArtists: $secondArtists, composer: $composer, language: $language, trackName: $trackName, trackNo: $trackNo, date: $date, lyrics: $lyrics, copyright: $copyright, publisher: $publisher genres: $genres, cover: ${coverData?.length}, tags: $tags)';

  static bool isMyFilename(String path) {
    return isMyFileExt(path.fileExt());
  }

  static bool isMyFileExt(String ext) {
    return ext == "mp3"; // || ext == "ogg";
  }
}
