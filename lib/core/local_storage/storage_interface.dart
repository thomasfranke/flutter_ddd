abstract class ILocalStorageService {
  Future get({required String key});

  Future put({required String key, required dynamic value});

  Future delete({required String key});

  Future putArray({required String key, required dynamic value});

  Future<bool> inArray({required String key, required dynamic value});

  Future addToArray({required String key, required dynamic value});

  Future removeFromArray({required String key, required dynamic value});
}
