import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/services/favorites_service.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesUsecases {
  final FavoritesService favoriteService = Modular.get<FavoritesService>();
  final QuotesService quotesService = Modular.get<QuotesService>();

  Future<List<QuoteSummaryEntity>> fetchFavorites() async {
    return await favoriteService.getFavorites();
  }

  Future<void> updateFavorite({required String symbol}) async {
    return await favoriteService.isFavorite(symbol: symbol)
        ? favoriteService.removeFavorite(symbol: symbol)
        : favoriteService.addFavorite(symbol: symbol);
  }
}
