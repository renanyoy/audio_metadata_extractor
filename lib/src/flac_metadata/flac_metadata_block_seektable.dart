import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';
import 'utils.dart';

class FlacMetadataBlockSeektable extends FlacMetadataBlock {
  final List<FlacMetadataSeekpoint> seekpoints;
  FlacMetadataBlockSeektable(super.header, this.seekpoints);

  static FlacMetadataBlockSeektable parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    int len = buff.length ~/ seekpointSize;
    List<FlacMetadataSeekpoint> seekpoints = [];
    for (var i = 0; i < len; i++) {
      seekpoints.add(FlacMetadataSeekpoint.parse(buff, i * seekpointSize));
    }
    return FlacMetadataBlockSeektable(header, seekpoints);
  }

  static const int seekpointSize = 18;

  @override
  String toString() => 'FlacMetadataBlockSeektable(seekpoints: $seekpoints)';
}

class FlacMetadataSeekpoint {
  // <64>	Sample number of first sample in the target frame, or 0xFFFFFFFFFFFFFFFF for a placeholder point.
  final int sampleNumber;
  // <64>	Offset (in bytes) from the first byte of the first frame header to the first byte of the target frame's header.
  final int streamOffset;
  // <16>	Number of samples in the target frame.
  final int numberOfSamples;
  FlacMetadataSeekpoint(
      this.sampleNumber, this.streamOffset, this.numberOfSamples);

  static FlacMetadataSeekpoint parse(Uint8List buff, int offset) {
    int sampleNumber = bytesToInt(buff, offset + 0, 8);
    int streamOffset = bytesToInt(buff, offset + 8, 8);
    int numberOfSamples = bytesToInt(buff, offset + 16, 2);
    return FlacMetadataSeekpoint(sampleNumber, streamOffset, numberOfSamples);
  }

  @override
  String toString() =>
      'FlacMetadataSeekpoint(sampleNumber: $sampleNumber, streamOffset: $streamOffset, numberOfSamples: $numberOfSamples)';
}
