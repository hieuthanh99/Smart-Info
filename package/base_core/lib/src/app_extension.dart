import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;

extension AppLocalizationsExtension on BuildContext {
  void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

extension StringExtension on String {
  String get toFirstCapital {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String get removeDiacritics {
    return replaceAll(RegExp(r'[^\x00-\x7F]'), '').toLowerCase();
  }

  bool get isSuccess => toUpperCase() == 'OK';
}

extension ListExtension<T> on List {
  bool hasObjectInList(T object, bool Function(T, T) condition) {
    return any((item) => condition(item, object));
  }

  void toggleAll<T>(List<T> list) {
    if (length == list.length) {
      clear();
    } else {
      clear();
      addAll(list);
    }
  }
}

extension SetExtension on Set<dynamic> {
  void toggle(String val) {
    if (!contains(val)) {
      add(val);
    } else {
      remove(val);
    }
  }

  void toggleAll(List<String> list) {
    if (length == list.length) {
      clear();
    } else {
      addAll(list);
    }
  }
}

extension IntegetExtension on int? {
  bool get success {
    if (this == 200 || this == 201 || this == 204) {
      return true;
    }
    return false;
  }
}

extension GeneralExtension<T> on T {
  bool get isEnum {
    return this is Enum;
  }

  String get getEnumString {
    final split = toString().split('.');
    return split.length > 1 ? split.last : '';
  }
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) sync* {
    var index = 0;
    for (final value in this) {
      yield f(index, value);
      index++;
    }
  }
}

extension MapExtension on Map<dynamic, dynamic> {
  String get format {
    if (isEmpty) {
      return '';
    } else {
      final firstKey = entries.first.key;
      final mapValues = entries.first.value;
      return '?$firstKey=$mapValues';
    }
  }
}

extension FileExtention on File {
  int get size {
    final sizeInBytes = lengthSync();
    return sizeInBytes;
  }

  String get name {
    return path.basename(this.path);
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}

void pop(BuildContext context, int returnedLevel) {
  for (var i = 0; i < returnedLevel; ++i) {
    Navigator.pop(context, true);
  }
}
