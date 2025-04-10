import 'package:flutter_ddd/app/domain/services/favorites_service.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesUsecases {
  final FavoritesService favoriteService = Modular.get<FavoritesService>();
  final QuotesService quotesService = Modular.get<QuotesService>();

  Future<List<String>> fetchFavorites() async {
    return await favoriteService.getFavorites();
  }

  Future<List<String>> updateFavorite({required String symbol}) async {
    return await favoriteService.updateFavorite(symbol: symbol);
  }
}
