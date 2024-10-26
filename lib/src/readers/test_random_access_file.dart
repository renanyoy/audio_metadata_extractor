import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

class TestRandomAccessFile implements RandomAccessFile {
  final RandomAccessFile _file;

  int _readedBytes = 0;
  int _writedBytes = 0;
  int _changePositionCount = 0;

  int readedBytes() => _readedBytes;
  int writedBytes() => _writedBytes;
  int changePositionCount() => _changePositionCount;

  TestRandomAccessFile(this._file);

  @override
  Future<void> close() => _file.close();

  @override
  void closeSync() => _file.closeSync();

  @override
  Future<RandomAccessFile> flush() => _file.flush();

  @override
  void flushSync() => _file.flushSync();

  @override
  Future<int> length() => _file.length();

  @override
  int lengthSync() => _file.lengthSync();

  @override
  Future<RandomAccessFile> lock(
          [FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) =>
      _file.lock(mode, start, end);

  @override
  void lockSync(
          [FileLock mode = FileLock.exclusive, int start = 0, int end = -1]) =>
      _file.lockSync(mode, start, end);

  @override
  String get path => _file.path;

  @override
  Future<int> position() => _file.position();

  @override
  int positionSync() => _file.positionSync();

  @override
  Future<Uint8List> read(int count) {
    _readedBytes += count;
    return _file.read(count);
  }

  @override
  Future<int> readByte() {
    _readedBytes++;
    return _file.readByte();
  }

  @override
  int readByteSync() {
    _readedBytes++;
    return _file.readByteSync();
  }

  @override
  Future<int> readInto(List<int> buffer, [int start = 0, int? end]) async {
    final res = await _file.readInto(buffer, start, end);
    _readedBytes += res;
    return res;
  }

  @override
  int readIntoSync(List<int> buffer, [int start = 0, int? end]) {
    final res = _file.readIntoSync(buffer, start, end);
    _readedBytes += res;
    return res;
  }

  @override
  Uint8List readSync(int count) {
    _readedBytes += count;
    return _file.readSync(count);
  }

  @override
  Future<RandomAccessFile> setPosition(int position) {
    _changePositionCount++;
    return _file.setPosition(position);
  }

  @override
  void setPositionSync(int position) {
    _changePositionCount++;
    return _file.setPositionSync(position);
  }

  @override
  Future<RandomAccessFile> truncate(int length) => _file.truncate(length);

  @override
  void truncateSync(int length) => _file.truncateSync(length);

  @override
  Future<RandomAccessFile> unlock([int start = 0, int end = -1]) =>
      _file.unlock(start, end);

  @override
  void unlockSync([int start = 0, int end = -1]) =>
      _file.unlockSync(start, end);

  @override
  Future<RandomAccessFile> writeByte(int value) {
    _writedBytes++;
    return _file.writeByte(value);
  }

  @override
  int writeByteSync(int value) {
    _writedBytes++;
    return _file.writeByteSync(value);
  }

  @override
  Future<RandomAccessFile> writeFrom(List<int> buffer,
      [int start = 0, int? end]) async {
    int end0 = end ?? buffer.length;
    _writedBytes += end0 - start;
    final res = await _file.writeFrom(buffer, start, end);
    return res;
  }

  @override
  void writeFromSync(List<int> buffer, [int start = 0, int? end]) {
    int end0 = end ?? buffer.length;
    _writedBytes += end0 - start;
    _file.writeFromSync(buffer, start, end);
  }

  @override
  Future<RandomAccessFile> writeString(String string,
      {Encoding encoding = utf8}) {
    _writedBytes += encoding.encode(string).length;
    return _file.writeString(string, encoding: encoding);
  }

  @override
  void writeStringSync(String string, {Encoding encoding = utf8}) {
    _writedBytes += encoding.encode(string).length;
    _file.writeStringSync(string, encoding: encoding);
  }
}
