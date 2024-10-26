import 'dart:math';
import 'id3_context.dart';
import 'id3_tag.dart';
import 'utils.dart';

class ID3UserText extends ID3Tag {
  final ID3Context context;
  final int encodingByte;
  late final String description;
  late final String value;

  ID3UserText(
      this.context, super.buff, super.tagId, super.dataOffset, super.dataLength)
      : encodingByte = buff[dataOffset] {
    int descrStart = dataOffset + 1;
    int descrEnd = findStrTerminate(
        buff, descrStart, min(64, dataLength - 1), encodingByte);
    int descrLen = descrEnd - descrStart;
    description = context.decode(buff, encodingByte, dataOffset + 1, descrLen);

    int valueOffset = descrEnd + 2;
    int valueLen = (dataOffset + dataLength) - valueOffset;
    value = context.decode(buff, buff[descrEnd + 1], valueOffset, valueLen);
  }

  @override
  String toString() =>
      'ID3UserText(encodingByte: $encodingByte, description: $description, value: $value)';
}
