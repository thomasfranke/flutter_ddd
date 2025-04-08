import 'dart:developer';

import 'package:flutter_ddd/shared/mappers/quote_detail_mapper.dart';
import 'package:flutter_ddd/shared/mappers/quote_summary_mapper.dart';
import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuotesService {
  IQuotesRepository quoteRepository = Modular.get<IQuotesRepository>();

  Future<QuoteDetailEntity> getQuote({required String symbol}) async {
    final model = await quoteRepository.fetchQuote(symbol: symbol);
    return model.toEntity();
  }

  Future<List<QuoteSummaryEntity>> getQuotes() async {
    log('getQuotes');
    return (await quoteRepository.fetchQuotes()) //
        .take(10)
        .map((model) => model.toEntity())
        .toList();
  }
}
