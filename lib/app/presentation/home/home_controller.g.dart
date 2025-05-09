// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<List<String>>? _$favoritesSymbolsComputed;

  @override
  List<String> get favoritesSymbols => (_$favoritesSymbolsComputed ??=
          Computed<List<String>>(() => super.favoritesSymbols,
              name: 'HomeControllerBase.favoritesSymbols'))
      .value;
  Computed<List<QuoteSummaryEntity>>? _$favoriteQuotesComputed;

  @override
  List<QuoteSummaryEntity> get favoriteQuotes => (_$favoriteQuotesComputed ??=
          Computed<List<QuoteSummaryEntity>>(() => super.favoriteQuotes,
              name: 'HomeControllerBase.favoriteQuotes'))
      .value;

  late final _$quotesListAtom =
      Atom(name: 'HomeControllerBase.quotesList', context: context);

  @override
  FetchStore<List<QuoteSummaryEntity>> get quotesList {
    _$quotesListAtom.reportRead();
    return super.quotesList;
  }

  @override
  set quotesList(FetchStore<List<QuoteSummaryEntity>> value) {
    _$quotesListAtom.reportWrite(value, super.quotesList, () {
      super.quotesList = value;
    });
  }

  late final _$favoritesListAtom =
      Atom(name: 'HomeControllerBase.favoritesList', context: context);

  @override
  FetchStore<List<String>> get favoritesList {
    _$favoritesListAtom.reportRead();
    return super.favoritesList;
  }

  @override
  set favoritesList(FetchStore<List<String>> value) {
    _$favoritesListAtom.reportWrite(value, super.favoritesList, () {
      super.favoritesList = value;
    });
  }

  late final _$updateFavoriteAsyncAction =
      AsyncAction('HomeControllerBase.updateFavorite', context: context);

  @override
  Future updateFavorite({required String symbol}) {
    return _$updateFavoriteAsyncAction
        .run(() => super.updateFavorite(symbol: symbol));
  }

  @override
  String toString() {
    return '''
quotesList: ${quotesList},
favoritesList: ${favoritesList},
favoritesSymbols: ${favoritesSymbols},
favoriteQuotes: ${favoriteQuotes}
    ''';
  }
}
