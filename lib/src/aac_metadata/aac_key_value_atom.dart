// ignore_for_file: public_member_api_docs, sort_constructors_first
// https://wiki.multimedia.cx/index.php/QuickTime_container#Meta_Data

import 'aac_base_atom.dart';
import 'aac_data_atom.dart';

class AacKeyValueAtom extends AacBaseAtom {
  final AacDataAtom? dataAtom;

  AacKeyValueAtom(
      super.buff, super.atomType, super.dataOffset, super.dataLength)
      : dataAtom = AacDataAtom.parse(buff, dataOffset, dataLength);

  @override
  String toString() => 'AacKeyValueAtom(atomType: $atomType, data: $dataAtom)';
}
