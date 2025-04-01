abstract class IStorageService<T> {
  Future<void> put(T entity);
  Future<void> putArray(String key, T value);
  Future<void> delete(int id);
  Future<T?> get(int id);
  Future<List<T>> getAll();
  Future<bool> inArray(String key, T value);
}
