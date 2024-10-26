// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data

import 'dart:typed_data';

class AacBaseAtom {
  final Uint8List buff;
  // final int offset;
  final String atomType;
  final int dataOffset;
  final int dataLength;

  AacBaseAtom(this.buff, this.atomType, this.dataOffset, this.dataLength);

  Uint8List get data => Uint8List.view(buff.buffer, dataOffset, dataLength);

  static const String atomTypeDATA = 'data';
}
