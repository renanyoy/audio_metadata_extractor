import 'dart:io';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:test/test.dart';

void main() {
  test('id3 metadata ...', () async {
    var reader = ID3Reader(context: ID3Context(forceDuration: true));
    final f = await File("test/resources/sample.mp3").open();
    var metadata = await reader.read(f);
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
