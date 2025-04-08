import 'package:flutter_ddd/app/data/models/quote_summary_model.dart';
import 'package:flutter_ddd/app/data/models/quote_detail_model.dart';

abstract class IQuotesRepository {
  Future<List<QuoteSummaryModel>> fetchQuotes();
  Future<QuoteDetailModel> fetchQuote({required String symbol});
}
