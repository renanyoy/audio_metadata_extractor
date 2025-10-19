import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_charset_detector/flutter_charset_detector.dart';

class RiffChunk {
  static const containers = {'RIFF', 'LIST'};
  final String id;
  final String? info;
  final int position;
  final int length;
  const RiffChunk({
    required this.id,
    this.info,
    required this.length,
    required this.position,
  });
  bool get isContainer => info != null;
  int get data => position + (isContainer ? 12 : 8);
  int get end => position + 8 + ((length & 1) == 0 ? length : length + 1);
  Future<Uint8List> readData({required RandomAccessFile file}) async {
    await file.setPosition(data);
    return await file.read(length);
  }

  Future<String> readDataString({required RandomAccessFile file}) async {
    Uint8List d = await readData(file: file);
    final i = d.indexOf(0);
    if (i >= 0) {
      d = d.sublist(0, i);
    }
    try {
      final s = await CharsetDetector.autoDecode(d);
      return s.string;
    } catch (_) {}
    return latin1.decode(d);
  }

  static Future<RiffChunk> from(
      {required RandomAccessFile file, required int position}) async {
    await file.setPosition(position);
    final bid = await file.read(4);
    final id = latin1.decode(bid);
    final blength = await file.read(4);
    final length = blength.buffer.asByteData().getUint32(0, Endian.little);
    String? info;
    if (containers.contains(id)) {
      final binfo = await file.read(4);
      info = latin1.decode(binfo);
    }
    return RiffChunk(id: id, info: info, position: position, length: length);
  }
}
