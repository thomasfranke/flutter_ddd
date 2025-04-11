import 'dart:developer';

import 'package:flutter_ddd/app/domain/repositories/favorites_repository.dart';
import 'package:flutter_ddd/core/local_storage/local_storage_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final LocalStorageImpl localStorageService = Modular.get<LocalStorageImpl>();

  @override
  Future<List<String>> fetchFavorites() async {
    List<dynamic> list = await localStorageService.get(key: 'favorites') ?? [];
    log("Fetching favorites: $list");

    return list.map((e) => e.toString()).toList();
  }

  @override
  Future<void> addToFavorites({required String symbol}) async {
    log("Adding to favorites: $symbol");
    localStorageService.addToArray(key: 'favorites', value: symbol);
  }

  @override
  Future<void> removeFromFavorites({required String symbol}) async {
    log("Remove to favorites: $symbol");
    localStorageService.removeFromArray(key: 'favorites', value: symbol);
  }
}
