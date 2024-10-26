import 'dart:io';

import 'package:audio_metadata_extractor/src/aac_metadata/aac_reader.dart';
import 'package:test/test.dart';

void main() {
  test("Mpeg tags read", () async {
    var path = "test/resources/sample.m4a";
    var file = File(path);
    RandomAccessFile reader = file.openSync();
    var metadata = await AacReader().read(reader);
    expect(metadata != null, true);
    metadata!;
    expect(metadata.album, "Bee Moved");
    expect(metadata.firstArtists, "Blue Monday FM");
    expect(metadata.trackName, "Bee Moved");
    expect(metadata.duration?.inSeconds, 39);
    expect(metadata.coverData != null, true);
  });
}
