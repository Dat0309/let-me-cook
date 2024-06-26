// ignore_for_file: depend_on_referenced_packages

import 'package:hive_flutter/hive_flutter.dart';

class LocalSrorageHelper {
  LocalSrorageHelper._internal();
  static final LocalSrorageHelper _shared = LocalSrorageHelper._internal();

  factory LocalSrorageHelper() {
    return _shared;
  }

  Box<dynamic>? hiveBox;

  static initLocalStorageHelper() async {
    _shared.hiveBox = await Hive.openBox('TravolApp');
  }

  static dynamic getValues(String key) {
    return _shared.hiveBox?.get(key);
  }

  static setValue(String key, dynamic val) {
    _shared.hiveBox?.put(key, val);
  }
}
