import 'dart:io';

import 'package:audio_metadata_extractor/src/audio_metadata.dart';

void main() async {
  var file = File("./audio.flac");
  var metadata = await AudioMetadata.extract(file);
  metadata!;
  print("album: ${metadata.album}");
  print("firstArtists: ${metadata.firstArtists}");
  print("secondArtists: ${metadata.secondArtists}");
  print("composer: ${metadata.composer}");
  print("date: ${metadata.date}");
  print("language: ${metadata.language}");
  print("trackName: ${metadata.trackName}");
  print("trackNo: ${metadata.trackNo}");
  print("genre: ${metadata.genres}");
  print("cover: ${metadata.coverData?.length}");
  if (metadata.coverData != null) {
    // Save cover to file
    var f = File("./cover.jpg");
    var wr = await f.open(mode: FileMode.writeOnly);
    await wr.writeFrom(metadata.coverData!);
    await wr.close();
  }
  print("lyrics: ${metadata.lyrics}");
  print(
      "duration: ${metadata.duration}, ${metadata.duration?.inMilliseconds}ms");
}
