import 'dart:io';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:test/test.dart';

void main() {
  test("Flac tags read", () async {
    var path = "test/resources/sample.flac";
    var file = File(path);
    RandomAccessFile reader = file.openSync();
    var metadata = await FlacMetadata.readFromRandomAccessFile(reader);
    expect(metadata != null, true);
    metadata!;
    expect(metadata.album, "Bee Moved");
    expect(metadata.firstArtists, "Blue Monday FM");
    expect(metadata.trackName, "Bee Moved");
    expect(metadata.duration?.inSeconds, 39);
    expect(metadata.coverData != null, true);
  });
}
