import 'dart:convert';
import 'dart:typed_data';

import 'flac_metadata_block_header.dart';
import 'flac_metadata_block.dart';
import 'utils.dart';

class FlacMetadataBlockApplication extends FlacMetadataBlock {
  // <32>	Registered application ID. (Visit the registration page to register an ID with FLAC.)
  final int id;
  final String idStr;
  final String idHex;
  // <n>	Application data (n must be a multiple of 8)
  final Uint8List data;
  FlacMetadataBlockApplication(
      super.header, this.id, this.idStr, this.idHex, this.data);

  static FlacMetadataBlockApplication parse(
      FlacMetadataBlockHeader header, Uint8List buff) {
    var applicationId = bytesToInt(buff, 0, 4);
    return FlacMetadataBlockApplication(
        header,
        applicationId,
        latin1.decode(Uint8List.view(buff.buffer, 0, 4)),
        applicationId.toRadixString(16),
        Uint8List.view(buff.buffer, 4));
  }

  @override
  String toString() =>
      'FlacMetadataBlockApplication(id: $id, data[${data.length}])';
}
