import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';
import 'package:test/test.dart';

void main() {
  test('Flac decode bytesToInt', () {
    var buff = Uint8List.fromList([0, 0, 34]);
    var res = bytesToInt(buff);
    expect(res, 34);
  });
  test('Flac decode bitsToInt', () {
    //0A C4 42
    var buff = Uint8List.fromList([10, 196, 66, 240, 0, 92, 239, 8]);
    var sampleRate = bitsToInt(buff, 0, 20);
    expect(sampleRate, 44100); //AC 44
    var channels = bitsToInt(buff, 20, 3) + 1;
    expect(channels, 2);
    var bitsPerSample = bitsToInt(buff, 23, 5) + 1;
    expect(bitsPerSample, 16);
    int totalSamples = bitsToInt(buff, 28, 36);
    expect(totalSamples, 6090504);
  });
}
