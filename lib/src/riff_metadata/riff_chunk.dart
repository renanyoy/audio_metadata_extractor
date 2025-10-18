import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

class RiffChunk {
  static const Set<String> containers = {'RIFF', 'LIST'};
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
  int get data => position + (info != null ? 12 : 8);
  int get end => data + ((length & 1) == 0 ? length : length + 1);
  Future<Uint8List> readData({required RandomAccessFile file}) async {
    await file.setPosition(data);
    return await file.read(length);
  }

  Future<String> readDataString({required RandomAccessFile file}) async {
    final data = await readData(file: file);
    final s = latin1.decode(data);
    return s.replaceAll('\x00', '').trim();
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
