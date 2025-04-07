import 'package:flutter_ddd/utils/local_storage/storage_interface.dart';
import 'package:objectbox/objectbox.dart';

class ObjectBoxStorage<T> implements IStorageService<T> {
  final Store _store;
  late final Box<T> _box;

  ObjectBoxStorage(this._store) {
    _box = _store.box<T>();
  }

  @override
  Future<void> put(T entity) async {
    _box.put(entity);
  }

  @override
  Future<void> putArray(String key, T value) async {
    List<T> result = await getAll();

    if (result.isNotEmpty) {
      if (await inArray(key, value)) {
        return;
      }

      result.add(value);
      _box.put(key as T);
    } else {
      _box.put(value);
    }
  }

  @override
  Future<void> delete(int id) async {
    _box.remove(id);
  }

  @override
  Future<T?> get(int id) async {
    return _box.get(id);
  }

  @override
  Future<List<T>> getAll() async {
    return _box.getAll();
  }

  @override
  Future<bool> inArray(String key, T value) async {
    final allItems = await getAll();
    return allItems.contains(value);
  }
}
