import 'package:flutter_ddd/shared/mappers/quote_detail_mapper.dart';
import 'package:flutter_ddd/shared/mappers/quote_summary_mapper.dart';
import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/repositories/quote_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuotesService {
  IQuoteRepository currencyRepository = Modular.get<IQuoteRepository>();

  Future<QuoteDetailEntity> getCurrency({required String quoteSymbol}) async {
    final model = await currencyRepository.fetchQuote(quoteSymbol: quoteSymbol);
    return model.toEntity();
  }

  Future<List<QuoteSummaryEntity>> getCurrencies() async {
    final models = await currencyRepository.fetchQuotes();
    return models.map((model) => model.toEntity()).toList();
  }
}
