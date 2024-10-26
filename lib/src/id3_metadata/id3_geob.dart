import 'dart:math';
import 'dart:typed_data';

import 'utils.dart';
import 'id3_context.dart';
import 'id3_tag.dart';

class ID3Geob extends ID3Tag {
  final ID3Context context;
  final int encodingByte;
  late final String mimeType;
  late final String filename;
  late final String contentDescription;
  late final int objectOffset;
  late final int objectLength;

  ID3Geob(
      this.context, super.buff, super.tagId, super.dataOffset, super.dataLength)
      : encodingByte = buff[dataOffset] {
    int offset = dataOffset + 1;
    int end = findStrTerminate(buff, offset, min(64, dataLength - 1), 0);

    mimeType = context.decode(buff, encodingByte, offset, (end - offset));
    offset = end + 1 + 1;

    end = findStrTerminate(buff, offset, min(64, dataLength - 1), encodingByte);
    filename = context.decode(buff, encodingByte, offset, (end - offset));
    offset = end + 1 + 1;

    end = findStrTerminate(buff, offset, min(64, dataLength - 1), encodingByte);
    contentDescription =
        context.decode(buff, encodingByte, offset, (end - offset));
    offset = end + 1 + 1;
    objectOffset = offset;
    objectLength = dataLength - (offset - dataOffset);
  }

  Uint8List get objectData =>
      Uint8List.view(buff.buffer, objectOffset, objectLength);

  @override
  String toString() {
    return 'ID3Geob(dataLength: $dataLength, encodingByte: $encodingByte, mimeType: "$mimeType", filename: "$filename", contentDescription: "$contentDescription", object: $objectOffset:$objectLength)';
  }
}
