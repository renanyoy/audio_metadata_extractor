import 'dart:typed_data';

import 'package:audio_metadata_extractor/src/extensions/string_extension.dart';

extension Uint8ListExt on Uint8List {
  String toHexString([int offset = 0, int? length, String div = ""]) {
    length ??= this.length;
    var s = "";
    for (var i = 0; i < length; i++) {
      if (i > 0 && div.isNotEmpty) {
        s += div;
      }
      s += this[offset + i].toRadixString(16).padLeft(2, '0');
    }
    return s;
  }
}

extension ListExtension<E> on List<E> {
  E? findFirst(bool Function(E element) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  R? mapFirst<R>(R? Function(E element) test) {
    for (E element in this) {
      var r = test(element);
      if (r != null) return r;
    }
    return null;
  }

  void addIf(E value) {
    if (!contains(value)) {
      add(value);
    }
  }

  E? getOrNull(int index) {
    if (0 <= index && index < length) {
      return this[index];
    } else {
      return null;
    }
  }
}

extension ListStringExtension on List<String> {
  void addIf(String value, {bool caseSensetive = true}) {
    if (caseSensetive) {
      if (!contains(value)) {
        add(value);
      }
    } else if (findFirst((element) => value.equalsIgnoreCase(element)) ==
        null) {
      add(value);
    }
  }
}
