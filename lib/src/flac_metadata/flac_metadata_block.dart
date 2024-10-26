import 'dart:typed_data';

import 'flac_metadata_block_application.dart';
import 'flac_metadata_block_padding.dart';
import 'flac_metadata_block_seektable.dart';
import 'flac_metadata_block_vorbis_comment.dart';
import 'flac_metadata_block_cuesheet.dart';
import 'flac_metadata_block_header.dart';
import 'flac_metadata_block_picture.dart';
import 'flac_metadata_block_stream_info.dart';

abstract class FlacMetadataBlock {
  static const int blockTypeStreamInfo = 0;
  static const int blockTypePadding = 1;
  static const int blockTypeApplication = 2;
  static const int blockTypeSeektable = 3;
  static const int blockTypeVorbisComment = 4;
  static const int blockTypeCuesheet = 5;
  static const int blockTypePicture = 6;
  //7-126 : reserved
  //127 : invalid, to avoid confusion with a frame sync code

  final FlacMetadataBlockHeader header;
  FlacMetadataBlock(this.header);

  static FlacMetadataBlock? parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    switch (header.blockType) {
      case blockTypeStreamInfo:
        return FlacMetadataBlockStreamInfo.parse(header, buff);
      case blockTypePadding:
        return FlacMetadataBlockPadding.parse(header, buff);
      case blockTypeApplication:
        return FlacMetadataBlockApplication.parse(header, buff);
      case blockTypeSeektable:
        return FlacMetadataBlockSeektable.parse(header, buff);
      case blockTypeVorbisComment:
        return FlacMetadataBlockVorbisComment.parse(header, buff);
      case blockTypeCuesheet:
        return FlacMetadataBlockCuesheet.parse(header, buff);
      case blockTypePicture:
        return FlacMetadataBlockPicture.parse(header, buff);
    }
    return null;
  }
}
