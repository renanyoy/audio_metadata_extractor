import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/id3_metadata/utils.dart';
import 'package:test/test.dart';

void main() {
  test('utils ...', () async {
    var res = isUtf8Buff(l);
    expect(res, true);
  });
}

var l = Uint8List.fromList([
  208,
  159,
  209,
  131,
  209,
  130,
  209,
  140,
  32,
  208,
  168,
  208,
  176,
  208,
  188,
  208,
  176,
  208,
  189,
  208,
  176,
  46,
  32,
  208,
  168,
  208,
  176,
  208,
  179,
  32,
  50,
  46,
  32,
  208,
  147,
  208,
  176,
  208,
  188,
  208,
  177,
  208,
  184,
  209,
  130,
  32,
  208,
  154,
  208,
  176,
  209,
  128,
  209,
  130,
  208,
  190,
  209,
  129,
  208,
  176
]);
