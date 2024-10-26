import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';

class FlacMetadataBlockPadding extends FlacMetadataBlock {
  FlacMetadataBlockPadding(super.header);

  static FlacMetadataBlockPadding parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    // <n>	n '0' bits (n must be a multiple of 8)
    return FlacMetadataBlockPadding(header);
  }
}
