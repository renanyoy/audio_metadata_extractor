import 'dart:typed_data';

class ID3Tag {
  final Uint8List buff;
  final String tagId;
  final int dataOffset;
  final int dataLength;
  ID3Tag(this.buff, this.tagId, this.dataOffset, this.dataLength);

  Uint8List get rawData => Uint8List.view(buff.buffer, dataOffset, dataLength);

  @override
  String toString() {
    return 'ID3Tag(tagId: $tagId, data: $dataOffset:$dataLength)';
  }
}
