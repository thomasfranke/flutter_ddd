import 'dart:async';

import 'package:flutter_ddd/core/local_storage/storage_interface.dart';

class SecureStorageImpl implements ILocalStorageService {
  SecureStorageImpl();

  @override
  Future<void> delete({required String key}) async => ();

  @override
  Future<dynamic> get({required String key}) async => ();

  @override
  Future<void> put({required String key, required dynamic value}) async => ();

  @override
  Future<bool> inArray({required String key, required dynamic value}) async => false;

  @override
  Future<void> putArray({required String key, required dynamic value}) async => ();

  @override
  Future addToArray({required String key, required dynamic value}) async => ();

  @override
  Future removeFromArray({required String key, required dynamic value}) async => ();
}
