import 'dart:async';

import 'package:flutter_ddd/core/local_storage/storage_interface.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorageImpl implements ILocalStorageService {
  final Completer<Box> _instance = Completer<Box>();
  Box? boxBase;

  LocalStorageImpl({String boxName = 'app', this.boxBase}) {
    _init(boxName: boxName);
  }

  _init({required String boxName}) async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    await openBox(boxName: boxName);
    _instance.complete(boxBase);
  }

  Future<void> openBox({required String boxName}) async {
    boxBase = await Hive.openBox(boxName);
  }

  @override
  Future<void> delete({required String key}) async {
    var box = await _instance.future;
    box.delete(key);
  }

  @override
  Future<dynamic> get({required String key}) async {
    var box = await _instance.future;
    return box.get(key);
  }

  @override
  Future<void> put({required String key, required dynamic value}) async {
    var box = await _instance.future;
    box.put(key, value);
  }

  @override
  Future<bool> inArray({required String key, required dynamic value}) async {
    var array = await get(key: key);

    if (array != null && array is List) {
      return array.contains(value);
    }

    return false;
  }

  @override
  Future<void> putArray({required String key, required dynamic value}) async {
    List? result = await get(key: key);

    if (result != null) {
      List novoArray = result;

      if (await inArray(key: key, value: value)) {
        return;
      }

      novoArray.add(value);
      return put(key: key, value: novoArray);
    }

    return put(key: key, value: [value]);
  }

  @override
  Future addToArray({required String key, required dynamic value}) async {
    var box = await _instance.future;
    List list = await get(key: key) ?? [];
    list.add(value);
    await box.put(key, list);
  }

  @override
  Future removeFromArray({required String key, required dynamic value}) async {
    var box = await _instance.future;
    List list = await get(key: key);
    list.remove(value);
    await box.put(key, list);
  }
}
