import 'dart:convert';
import 'dart:typed_data';
import 'package:audio_metadata_extractor/src/id3_metadata/utils.dart';
import 'package:charset/charset.dart';

class ID3Context {
  final Encoding ansi;
  final bool forceDuration;
  ID3Context({this.ansi = latin1, required this.forceDuration});

  Encoding getEncoding(int encodingByte) => encodingByte == 1 ? utf16 : ansi;

  String decode(Uint8List buff, int encodingByte, int offset, int length) {
    if (length <= 0) {
      return "";
    }
    if (encodingByte == 1 || isUTF16(buff, offset)) {
      int end = findStrTerminate(buff, offset, length, 1);
      length = end - offset;
      return utf16.decode(Uint8List.view(buff.buffer, offset, length));
    } else {
      int end = findStrTerminate(buff, offset, length, 0);
      length = end - offset;
      final tmp = Uint8List.view(buff.buffer, offset, length);
      if (isUtf8Buff(tmp)) {
        return utf8.decode(tmp);
      } else {
        return ansi.decode(tmp);
      }
    }
  }

  String decode2(Uint8List buff, int encodingByte, int offset, int end) {
    return decode(buff, encodingByte, offset, end - offset - 1);
  }

  static bool isUTF16(Uint8List buff, int offset) {
    if (offset + 1 >= buff.length) {
      return false;
    }
    return ((buff[offset] == 0xFF && buff[offset + 1] == 0xFE) ||
        (buff[offset + 1] == 0xFF && buff[offset] == 0xFE));
  }
}
