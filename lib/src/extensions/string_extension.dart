import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

extension StringExtension on String {
  String? ifNotEmpty() => isEmpty ? null : this;

  String addFilename(String filename) {
    return addToken(Platform.pathSeparator, filename);
  }

  String addPathSeparator([String? pathSeparator]) {
    pathSeparator ??= Platform.pathSeparator;
    if (endsWith(pathSeparator)) {
      return this;
    }
    return this + pathSeparator;
  }

  String removePathSeparator([String? pathSeparator]) {
    pathSeparator ??= Platform.pathSeparator;
    if (endsWith(pathSeparator)) {
      return substring(0, length - 1);
    }

    return this;
  }

  String addToken(String div, String? token) {
    if (isEmpty) {
      return token ?? this;
    } else if (token == null || token.isEmpty) {
      return this;
    } else {
      return this + div + token;
    }
  }

  String addTokenIf(String div, String? token) {
    if (token == null) {
      return this;
    } else {
      return addToken(div, token);
    }
  }

  String beforeToken(String token, {String def = ""}) {
    var n = indexOf(token);
    return (n >= 0) ? substring(0, n) : def;
  }

  String beforeToken2(String token, {String? def}) {
    def ??= this;
    var n = indexOf(token);
    return (n >= 0) ? substring(0, n) : def;
  }

  String beforeTokenLast(String token, {String def = ""}) {
    var n = lastIndexOf(token);
    return (n >= 0) ? substring(0, n) : def;
  }

  String? beforeTokenLast2(String token, {String? def}) {
    var n = lastIndexOf(token);
    return (n >= 0) ? substring(0, n) : def;
  }

  String afterToken(String token, {String def = ""}) {
    var n = indexOf(token);
    return (n >= 0) ? substring(n + token.length) : def;
  }

  String afterTokenOrSelf(String token) {
    var n = indexOf(token);
    return (n >= 0) ? substring(n + token.length) : this;
  }

  String afterTokenLast(String token, {String def = ""}) {
    var n = lastIndexOf(token);
    return (n >= 0) ? substring(n + token.length) : def;
  }

  int? toInt() => int.tryParse(this);

  String fileExt({bool lowercase = true}) {
    final s = afterTokenLast('.');
    return lowercase ? s.toLowerCase() : s;
  }

  String filename({String? pathSeparator}) {
    final separator = pathSeparator ?? Platform.pathSeparator;
    return afterTokenLast(separator);
  }

  String uriFilename() {
    final s = afterTokenLast('/');
    var n1 = s.lastIndexOf('?');
    final n2 = s.lastIndexOf('#');
    if (n1 > 0 && n2 > 0) {
      n1 = min(n1, n2);
    } else if (n2 > 0) {
      n1 = n2;
    }
    return n1 > 0 ? s.substring(0, n1) : s;
  }

  String fileBasename() {
    return beforeTokenLast('.');
  }

  String changeFileExt(String newExt) {
    int n = lastIndexOf('.');
    if (n >= 0) {
      return newExt.isEmpty ? substring(0, n) : substring(0, n + 1) + newExt;
    } else {
      return this;
    }
  }

  bool isHttpUri() => startsWith("http://") || startsWith("https://");

  bool isFileUri() => startsWith("file://");

  bool equalsIgnoreCase(String? other) {
    return (other != null) &&
        (length == other.length) &&
        toLowerCase() == other.toLowerCase();
  }

  Uint8List fromHexString() {
    List<int> res = [];
    int index = 0;
    while (index + 1 < length) {
      res.add(int.parse(this[index] + this[index + 1], radix: 16));
      index += 2;
    }
    return Uint8List.fromList(res);
  }
}
