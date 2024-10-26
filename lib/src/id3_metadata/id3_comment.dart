import 'dart:convert';
import 'dart:typed_data';

import 'utils.dart';
import 'id3_context.dart';
import 'id3_tag.dart';

class ID3Comment extends ID3Tag {
  final ID3Context context;
  late final int encodingByte;
  late final String language;
  late final String description;
  late final String lyrics;

  ID3Comment(this.context, super.buff, super.tagId, super.dataOffset,
      super.dataLength) {
    int offset = dataOffset;
    encodingByte = buff[offset];
    offset++;
    language = latin1.decode(Uint8List.view(buff.buffer, offset, 3));
    offset += 3;
    int end = findStrTerminate(buff, offset, 64, encodingByte);
    description = context.decode2(buff, encodingByte, offset, end);
    offset = end + 1;
    lyrics =
        context.decode2(buff, encodingByte, offset, dataOffset + dataLength);
  }

  @override
  String toString() {
    return 'ID3Comment(tagId: $tagId, encodingByte: $encodingByte, language: "$language", description: "$description", lyrics: "$lyrics")';
  }

  static const String tagIdCOMM = "COMM";
  static const String tagIdUSLT = "USLT";
}
