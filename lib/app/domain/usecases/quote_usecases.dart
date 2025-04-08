import 'dart:developer';

import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuoteUseCases {
  QuotesService currenciesService = Modular.get<QuotesService>();

  Future<QuoteDetailEntity> loadQuote({required String symbol}) async {
    return await currenciesService.getCurrency(symbol: symbol);
  }

  Future<List<QuoteSummaryEntity>> loadQuotes({String filter = ""}) async {
    log("loadCurrenciesUseCase: $filter");
    final allCurrencies = await currenciesService.getCurrencies();
    if (filter.isNotEmpty) {
      return allCurrencies.where((currency) => currency.symbol.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    // return allCurrencies.take(10).toList();
    return allCurrencies.toList();
  }
}
