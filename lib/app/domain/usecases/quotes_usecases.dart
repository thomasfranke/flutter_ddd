import 'dart:developer';

import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuotesUseCases {
  QuotesService quotesService = Modular.get<QuotesService>();

  Future<QuoteDetailEntity> loadQuote({required String symbol}) async {
    return await quotesService.getQuote(symbol: symbol);
  }

  Future<List<QuoteSummaryEntity>> loadQuotes({String filter = ""}) async {
    log("loadCurrenciesUseCase: $filter");
    List<QuoteSummaryEntity> allCurrencies = await quotesService.getQuotes();
    if (filter.isNotEmpty) {
      return allCurrencies.where((currency) => currency.symbol.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    return allCurrencies.toList();
  }
}
