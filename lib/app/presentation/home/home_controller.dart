import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/usecases/favorites_usecases.dart';
import 'package:flutter_ddd/app/domain/usecases/quotes_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  QuotesUseCases quoteUseCases = Modular.get<QuotesUseCases>();
  FavoritesUsecases favoritesUseCases = Modular.get<FavoritesUsecases>();

  @observable
  FetchStore<List<QuoteSummaryEntity>> quotesList = FetchStore([]);

  @observable
  FetchStore<List<String>> favoritesList = FetchStore([]);

  @computed
  List<String> get favoritesSymbols => favoritesList.data ?? [];

  @computed
  List<QuoteSummaryEntity> get favoriteQuotes => quotesList.data!.where((quote) => isFavorite(quote.symbol)).toList();

  getCurrencies({String filter = ""}) async {
    return await quotesList.fetch(quoteUseCases.loadQuotes(filter: filter));
  }

  getFavorites() async {
    return await favoritesList.fetch(favoritesUseCases.fetchFavorites());
  }

  bool isFavorite(String symbol) => favoritesSymbols.contains(symbol);

  @action
  updateFavorite({required String symbol}) async {
    await favoritesList.fetch(favoritesUseCases.updateFavorite(symbol: symbol));
  }
}
