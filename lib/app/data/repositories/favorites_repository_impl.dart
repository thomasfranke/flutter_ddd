import 'package:flutter_ddd/app/domain/repositories/favorites_repository.dart';
import 'package:flutter_ddd/core/local_storage/local_storage_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final LocalStorageImpl localStorageService = Modular.get<LocalStorageImpl>();

  @override
  Future<List<String>> fetchFavorites() async {
    dynamic list = await localStorageService.get(key: 'favorites');
    return (list as List?)?.map((e) => e.toString()).toList() ?? [];
  }

  @override
  Future<void> addToFavorites({required String symbol}) async {
    localStorageService.addToArray(key: 'favorites', value: symbol);
  }

  @override
  Future<void> removeFromFavorites({required String symbol}) async {
    localStorageService.removeFromArray(key: 'favorites', value: symbol);
  }

  @override
  Future<bool> isFavorite({required String symbol}) async {
    return fetchFavorites().then((favorites) => favorites.contains(symbol));
  }
}
