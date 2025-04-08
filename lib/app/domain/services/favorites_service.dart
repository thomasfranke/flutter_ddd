import 'package:flutter_ddd/app/data/models/quote_summary_model.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/repositories/favorites_repository.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_ddd/shared/mappers/quote_summary_mapper.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesService {
  final IFavoritesRepository _favoritesRepository = Modular.get<IFavoritesRepository>();
  final IQuotesRepository quotesRepository = Modular.get<IQuotesRepository>();

  Future<void> addFavorite({required String symbol}) async {
    _favoritesRepository.addToFavorites(symbol: symbol);
  }

  Future<void> removeFavorite({required String symbol}) async {
    _favoritesRepository.removeFromFavorites(symbol: symbol);
  }

  Future<bool> isFavorite({required String symbol}) async {
    return _favoritesRepository.isFavorite(symbol: symbol);
  }

  Future<List<QuoteSummaryEntity>> getFavorites() async {
    List<QuoteSummaryModel> models = await quotesRepository.fetchQuotes();

    models = await Future.wait(
      models.map((element) async {
        final isFavorite = await _favoritesRepository.isFavorite(symbol: element.symbol);
        return isFavorite ? element : null;
      }),
    ).then((filteredList) => filteredList.whereType<QuoteSummaryModel>().toList());

    return models.map((model) => model.toEntity()).toList();
  }
}
