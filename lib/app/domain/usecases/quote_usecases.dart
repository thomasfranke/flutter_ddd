import 'dart:developer';

import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuoteUseCases {
  QuotesService currenciesService = Modular.get<QuotesService>();

  Future<QuoteDetailEntity> loadQuote({required String quoteSymbol}) async {
    return await currenciesService.getCurrency(quoteSymbol: quoteSymbol);
  }

  Future<List<QuoteSummaryEntity>> loadQuotes({String filter = ""}) async {
    log("loadCurrenciesUseCase: $filter");
    final allCurrencies = await currenciesService.getCurrencies();
    if (filter.isNotEmpty) {
      return allCurrencies.where((currency) => currency.quoteSymbol.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    // return allCurrencies.take(10).toList();
    return allCurrencies.toList();
  }
}
