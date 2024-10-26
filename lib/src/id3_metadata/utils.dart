import 'dart:convert';
import 'dart:typed_data';

import 'package:audio_metadata_extractor/audio_metadata_extractor.dart';
import 'package:charset/charset.dart';

int _parseIntSynchronisation(Uint8List buff, int offset) {
  int value = (buff[offset + 0] & 0x7f) << 21;
  value += (buff[offset + 1] & 0x7f) << 14;
  value += (buff[offset + 2] & 0x7f) << 7;
  value += (buff[offset + 3] & 0x7f);
  return value;
}

int _parseIntUnsynchronisation(Uint8List buff, int offset) {
  int value = buff[offset + 0] << 24;
  value += buff[offset + 1] << 16;
  value += buff[offset + 2] << 8;
  value += buff[offset + 3];
  return value;
}

int parseIntWithSync(Uint8List buff, int offset, bool sync) {
  if (sync) {
    return _parseIntSynchronisation(buff, offset);
  } else {
    return _parseIntUnsynchronisation(buff, offset);
  }
}

int findIndexInBuffer(Uint8List buff, int b, int start, int maxLen) {
  for (var i = 0; i < maxLen; i++) {
    if (buff[i + start] == b) {
      return i + start;
    }
  }
  return start + maxLen;
}

int findEndUtf16InBuffer(Uint8List buff, int start, int maxLen) {
  for (var i = 0; i < maxLen - 1; i += 2) {
    if (buff[i + start] == 0 && buff[i + start + 1] == 0) {
      return i + start;
    }
  }
  return start + maxLen;
}

int findStrTerminate(Uint8List buff, int start, int maxLen, int encodingByte) {
  if (encodingByte == 1) {
    for (var i = 0; i < maxLen - 1; i += 2) {
      if (buff[i + start] == 0x0) {
        return i + start;
      }
    }
  } else {
    for (var i = 0; i < maxLen; i++) {
      if (buff[i + start] == 0x0) {
        return i + start;
      }
    }
  }
  return start + maxLen;
}

(String, int) parseString(
    Uint8List buff, int start, int maxLen, Encoding encoding) {
  if (ID3Context.isUTF16(buff, start)) {
    var end = findEndUtf16InBuffer(buff, start, maxLen);
    // end + 1 UTF16 terminate 2 bytes [0x0000]
    return (
      utf16.decode(Uint8List.view(buff.buffer, start, end - start)),
      end + 1
    );
  }
  var end = findIndexInBuffer(buff, 0x00, start, maxLen);
  return (
    encoding.decode(Uint8List.view(buff.buffer, start, end - start)),
    end
  );
}

bool isUtf8Buff(List<int> bytes) {
  int num;

  // while (*bytes != 0x00)
  int i = 0;
  while (i < bytes.length) {
    var b = bytes[i];
    if ((b & 0x80) == 0x00) {
      // U+0000 to U+007F
      num = 1;
    } else if ((b & 0xE0) == 0xC0) {
      // U+0080 to U+07FF
      num = 2;
    } else if ((b & 0xF0) == 0xE0) {
      // U+0800 to U+FFFF
      num = 3;
    } else if ((b & 0xF8) == 0xF0) {
      // U+10000 to U+10FFFF
      num = 4;
    } else
      return false;

    i += 1;
    for (int j = 1; j < num; ++j) {
      b = bytes[i];
      if ((b & 0xC0) != 0x80) return false;
      i += 1;
    }
  }

  return true;
}

bool isUtf8(String string) {
  // if (!string)
  //     return true;
  final bytes = string.codeUnits;
  // const unsigned char * bytes = (const unsigned char *)string;
  return isUtf8Buff(bytes);
}
