import 'dart:typed_data';

int bytesToInt(Uint8List buff, [int offset = 0, int? length]) {
  length ??= buff.length;
  var res = 0;
  var shift = (length - 1) * 8;
  for (var i = 0; i < length; i++) {
    res += buff[offset + i] << shift;
    shift -= 8;
  }
  //sizes[0] << 16) + (sizes[1] << 8) + sizes[2]
  return res;
}

int bytesToIntLE(Uint8List buff, [int offset = 0, int? length]) {
  length ??= buff.length;
  var res = 0;
  var shift = 0; //(length - 1) * 8;
  for (var i = 0; i < length; i++) {
    res += buff[offset + i] << shift;
    shift += 8;
  }
  //sizes[0] << 16) + (sizes[1] << 8) + sizes[2]
  return res;
}

int bitsToInt(Uint8List buff, int bitsOffset, int bitsLength) {
  var res = 0;
  int nextByte = bitsOffset ~/ 8;
  int nextByteShift = bitsOffset - nextByte * 8;
  int remainBits = bitsLength;

  while (remainBits > 0) {
    var b = buff[nextByte];

    remainBits -= 8 - nextByteShift;
    if (remainBits >= 0) {
      res += (b & (0xFF >> nextByteShift)) << remainBits;
    } else {
      res += (b & (0xFF >> nextByteShift)) >> -remainBits;
    }
    nextByte++;
    nextByteShift = 0;
    // print("Byte: [$b] $remainBits, ${res.toRadixString(16)}");
  }
  return res;
}
