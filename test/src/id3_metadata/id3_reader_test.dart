import 'dart:io';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:audio_metadata_extractor/src/readers/test_random_access_file.dart';
import 'package:charset/charset.dart';
import 'package:test/test.dart';

void main() {
  test('id3 reader ...', () async {
    var path = "test/resources/sample.mp3";
    var file = File(path);

    final reader = TestRandomAccessFile(file.openSync());
    var id3Reader =
        ID3Reader(context: ID3Context(ansi: windows1251, forceDuration: true));
    var metadata = await id3Reader.read(reader);
    expect(metadata != null, true);
    metadata!;
    expect(metadata.album, "Chapter One / Cold");
    expect(metadata.firstArtists, "Kai Engel");
    expect(metadata.secondArtists, "Kai Engel");
    expect(metadata.trackName, "Blizzard (PON I)");
    expect(metadata.trackNo, "3");
    expect(metadata.genres, "Classical");
    expect(metadata.coverData != null, true);
    expect(metadata.date, "2015-11-27 11:50:38");
    expect(metadata.duration?.inSeconds, 182);
  });
}
