import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';
import 'package:http/http.dart' as http;

class HttpRandomAccessFile implements RandomAccessFile {
  final Uri url;
  int _position = 0;
  int? _length;
  HttpRandomAccessFile(this.url, [this._length]);

  Future<void> _init() async {
    if (_length != null) {
      return;
    }

    var resp = await http.head(url);

    // var resp = await dio.head(uri);
    _length = resp.headersSplitValues["content-length"]?.firstOrNull?.toInt();
    if (_length == null) {
      // TODO: throw string
      throw "Can't fetch file";
    }
  }

  Future<int> _read(Uint8List buff, int offset, int length) async {
    final resp = await http.get(
      url,
      // options: Options(
      headers: {
        "Range": "bytes=$offset-${offset + length - 1}",
      },
      // responseType: ResponseType.bytes,
      // ),
    );
    List<int> resBuff = resp.bodyBytes;
    for (var i = 0; i < resBuff.length; i++) {
      buff[i] = resBuff[i];
    }
    return resBuff.length;
  }

  int _bufferFilePosition = 0;
  int _bufferReadPosition = 0;
  int _bufferLength = 0;
  final Uint8List _buffer = Uint8List(0xFFFF);

  Future<int> _readToBuff(int offset) async {
    await _init();
    int remainSize = lengthSync() - offset;
    int length = min(remainSize, _buffer.length);
    int res = await _read(_buffer, offset, length);
    _bufferFilePosition = offset;
    _bufferReadPosition = 0;
    _bufferLength = res;
    return res;
  }

  // int _readToBuffSync(int offset) {
  //   // await initRead();
  //   int remainSize = file.size - offset;
  //   int length = min(remainSize, _buffer.length);
  //   int res = await reader!.read(_buffer, offset, length);
  //   _bufferFilePosition = offset;
  //   _bufferReadPosition = 0;
  //   _bufferLength = res;
  //   return res;
  // }

  int _readFromBuffer(List<int> dst, int start, int length) {
    int res = 0;
    while (start < dst.length && _bufferReadPosition < _bufferLength) {
      dst[start] = _buffer[_bufferReadPosition];
      _bufferReadPosition++;
      start++;
      res++;
    }
    return res;
  }

  bool _positionInBuffer(int offset) {
    return _bufferFilePosition + _bufferReadPosition <= offset &&
        offset < _bufferFilePosition + _bufferLength;
  }

  @override
  Future<void> close() async {}

  @override
  void closeSync() {}

  @override
  Future<int> length() async {
    await _init();
    return _length!;
  }

  @override
  int lengthSync() {
    return _length!;
  }

  @override
  String get path => url.toString();

  @override
  Future<int> position() async => _position;

  @override
  int positionSync() => _position;

  @override
  Future<Uint8List> read(int count) async {
    Uint8List buff = Uint8List(count);
    await readInto(buff);
    return buff;
  }

  @override
  Uint8List readSync(int count) {
    Uint8List buff = Uint8List(count);
    readIntoSync(buff);
    return buff;
  }

  final Uint8List _byteBuff = Uint8List(1);

  @override
  Future<int> readByte() async {
    await readInto(_byteBuff);
    return _byteBuff[0];
  }

  @override
  int readByteSync() {
    readIntoSync(_byteBuff);
    return _byteBuff[0];
  }

  @override
  Future<int> readInto(List<int> buff, [int start = 0, int? end]) async {
    end ??= buff.length;
    int length = end - start;
    int res = 0;

    while (length > 0) {
      if (!_positionInBuffer(_position)) {
        await _readToBuff(_position);
      }
      var n = _readFromBuffer(buff, start, length);
      length -= n;
      start += n;
      res += n;
      _position += n;
    }
    return res;
  }

  @override
  int readIntoSync(List<int> buff, [int start = 0, int? end]) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> setPosition(int position) async {
    _position = position;
    return this;
  }

  @override
  void setPositionSync(int position) {
    _position = position;
  }

  @override
  Future<RandomAccessFile> lock(
      [FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) {
    throw UnimplementedError();
  }

  @override
  void lockSync(
      [FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> truncate(int length) {
    throw UnimplementedError();
  }

  @override
  void truncateSync(int length) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> unlock([int start = 0, int end = -1]) {
    throw UnimplementedError();
  }

  @override
  void unlockSync([int start = 0, int end = -1]) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> writeByte(int value) {
    throw UnimplementedError();
  }

  @override
  int writeByteSync(int value) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> writeFrom(List<int> buffer,
      [int start = 0, int? end]) {
    throw UnimplementedError();
  }

  @override
  void writeFromSync(List<int> buffer, [int start = 0, int? end]) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> writeString(String string,
      {Encoding encoding = utf8}) {
    throw UnimplementedError();
  }

  @override
  void writeStringSync(String string, {Encoding encoding = utf8}) {
    throw UnimplementedError();
  }

  @override
  Future<RandomAccessFile> flush() {
    throw UnimplementedError();
  }

  @override
  void flushSync() {
    throw UnimplementedError();
  }
}
