import 'dart:io';
import 'dart:typed_data';

class RiffAudioFormat {
  int encoding;
  int numChannels;
  int sampleRate;
  int byteRate;
  int blockAlign;
  int bitsPerSample;
  RiffAudioFormat({
    required this.encoding,
    required this.numChannels,
    required this.sampleRate,
    required this.byteRate,
    required this.blockAlign,
    required this.bitsPerSample,
  });
  static RiffAudioFormat fromData(ByteData data) => RiffAudioFormat(
      encoding: data.getUint16(0, Endian.little),
      numChannels: data.getUint16(2, Endian.little),
      sampleRate: data.getUint32(4, Endian.little),
      byteRate: data.getUint32(8, Endian.little),
      blockAlign: data.getUint16(12, Endian.little),
      bitsPerSample: data.getUint16(14, Endian.little));
  static Future<RiffAudioFormat> fromFile(
      RandomAccessFile file, int position) async {
    await file.setPosition(position);
    final list = await file.read(16);
    return fromData(list.buffer.asByteData());
  }
}
