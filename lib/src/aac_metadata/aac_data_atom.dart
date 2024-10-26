// ignore_for_file: public_member_api_docs, sort_constructors_first
// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data

import 'dart:convert';
import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/flac_metadata/utils.dart';
import 'aac_base_atom.dart';
import 'atoms_reader.dart';

class AacDataAtom extends AacBaseAtom {
  final int typeData;
  final int locale;
  final int rawValueOffset;
  final int rawValueLength;

  AacDataAtom(super.buff, super.type, super.dataOffset, super.dataLength)
      : typeData = bytesToInt(buff, dataOffset, 4),
        locale = bytesToInt(buff, dataOffset + 4, 4),
        rawValueOffset = dataOffset + 8,
        rawValueLength = dataLength - 8;

  String get valueStr => utf8.decode(valueRaw);

  int get valueInt {
    if (rawValueLength > 8) {
      // TODO: throw string
      throw "Too long number $rawValueLength > 8 byte!";
    }
    return bytesToInt(buff, dataOffset + 8, rawValueLength);
  }

  bool get valueBool => valueInt == 1;

  Pair<int, int> get valueInts {
    if (rawValueLength >= 6) {
      return (
        first: bytesToInt(buff, rawValueOffset + 2, 2),
        second: bytesToInt(buff, rawValueOffset + 4, 2)
      );
    } else {
      int len = rawValueLength ~/ 2;
      return (
        first: bytesToInt(buff, rawValueOffset, len),
        second: bytesToInt(buff, rawValueOffset + len, len)
      );
    }
  }

  Uint8List get valueRaw =>
      Uint8List.view(buff.buffer, rawValueOffset, rawValueLength);

  static AacDataAtom? parse(Uint8List buff, offset, length) {
    int size = bytesToInt(buff, offset, 4);
    offset += 4;
    if (size == 0) {
      return null;
    }
    String atomType = latin1.decode(Uint8List.view(buff.buffer, offset, 4));
    if (atomType != AacBaseAtom.atomTypeDATA) {
      return null;
    }
    offset += 4;
    int len;
    if (size == 1) {
      size = bytesToInt(buff, offset, 8);
      offset += 8;
      len = size - 16;
    } else {
      len = size - 8;
    }
    return AacDataAtom(buff, atomType, offset, len);
  }

  @override
  String toString() {
    return 'AacDataAtom(typeData: $typeData, locale: $locale, rawValue: $rawValueOffset:$rawValueLength)';
  }
}
