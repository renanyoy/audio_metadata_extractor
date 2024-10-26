import 'dart:typed_data';

import 'utils.dart';

class FlacMetadataBlockHeader {
  final bool isLastMetadataBlock;
  final int blockType;
  final int length;
  FlacMetadataBlockHeader(
      this.isLastMetadataBlock, this.blockType, this.length);

  FlacMetadataBlockHeader.empty() : this(false, 0, 0);

  // static Future<FlacMetadataBlockHeader> read(RandomAccessFile file) async {
  //   // int rawBlockType = await file.readByte();
  //   // var len = await file.read(3);

  //   // return FlacMetadataBlockHeader(
  //   //     (rawBlockType & 0x80) > 1, rawBlockType & 0x7F, bytesToInt(len));
  //   return FlacMetadataBlockHeader.parse(await file.read(4));
  // }

  factory FlacMetadataBlockHeader.parse(Uint8List buff, [int offset = 0]) {
    int rawBlockType = buff[offset];
    // print("Raw blockType=$rawBlockType");
    // var len = await file.read(3);
    int len = bytesToInt(buff, offset + 1, 3);

    return FlacMetadataBlockHeader(
        (rawBlockType & 0x80) > 1, rawBlockType & 0x7F, len);
  }

  @override
  String toString() =>
      'FlacMetadataBlockHeader(isLastMetadataBlock: $isLastMetadataBlock, blockType: $blockType, length: $length)';
}
