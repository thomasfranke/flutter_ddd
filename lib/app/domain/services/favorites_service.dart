import 'package:flutter_ddd/app/domain/repositories/favorites_repository.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesService {
  final IFavoritesRepository favoritesRepository = Modular.get<IFavoritesRepository>();
  final IQuotesRepository quotesRepository = Modular.get<IQuotesRepository>();

  Future<List<String>> updateFavorite({required String symbol}) async {
    List<String> favorites = await getFavorites();
    favorites.any((String favoriteSymbol) => favoriteSymbol == symbol)
        ? await _removeFavorite(symbol: symbol)
        : await _addFavorite(symbol: symbol);

    return await getFavorites();
  }

  Future<void> _addFavorite({required String symbol}) async {
    favoritesRepository.addToFavorites(symbol: symbol);
  }

  Future<void> _removeFavorite({required String symbol}) async {
    favoritesRepository.removeFromFavorites(symbol: symbol);
  }

  Future<List<String>> getFavorites() async {
    return await favoritesRepository.fetchFavorites();
  }
}
