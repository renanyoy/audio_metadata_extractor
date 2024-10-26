// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data

import 'dart:convert';
import 'dart:typed_data';
import 'package:audio_metadata_extractor/src/extensions/list_extension.dart';

import 'aac_key_value_atom.dart';
import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';

typedef Pair<T1, T2> = ({T1 first, T2 second});

class AtomsReader {
  final Uint8List buff;
  final int startOffset;
  final int length;
  int offset;

  String? _atomType;
  Pair<int, int>? _atomDataPos;

  AtomsReader(this.buff, this.offset, this.length) : startOffset = offset;

  void skip(int n) {
    offset += n;
  }

  bool next() {
    _atomType = null;
    _atomDataPos = null;
    if (offset >= startOffset + length) {
      return false;
    }
    int size = bytesToInt(buff, offset, 4);
    offset += 4;
    if (size == 0) {
      return false;
    }
    String atomType = latin1.decode(Uint8List.view(buff.buffer, offset, 4));
    _atomType = atomType;
    offset += 4;
    int len;
    if (size == 1) {
      size = bytesToInt(buff, offset, 8);
      offset += 8;
      len = size - 16;
    } else {
      len = size - 8;
    }
    _atomDataPos = (first: offset, second: len);
    // print("$atomType:$size");
    // if (atomType == metaAtomILST) {
    //   MetaIlstAtom.parse(buff, offset, len);
    // }
    offset += len;
    return true;
  }

  AtomsReader childs() {
    return AtomsReader(buff, _atomDataPos!.first, _atomDataPos!.second);
  }

  String get atomType => _atomType!;
  String get atomTypeHex => latin1.encode(_atomType!).toHexString();

  Uint8List get atomData =>
      Uint8List.view(buff.buffer, _atomDataPos!.first, _atomDataPos!.second);

  int get atomDataLength => _atomDataPos!.second;

  // String get dataString => utf8.decode(atomData);

  AacKeyValueAtom asTextAtom() => AacKeyValueAtom(
      buff, atomType, _atomDataPos!.first, _atomDataPos!.second);
}
