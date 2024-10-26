import 'id3_tag.dart';
import 'id3_context.dart';

class ID3Url extends ID3Tag {
  final ID3Context context;

  ID3Url(this.context, super.buff, super.tagId, super.dataOffset,
      super.dataLength);

  String get value => context.decode(buff, 0, dataOffset, dataLength);

  @override
  String toString() => 'ID3Url(tagId: $tagId, value: $value)';
}
