import 'package:flutter_ddd/app/data/models/quote_summary_model.dart';
import 'package:flutter_ddd/app/data/models/quote_detail_model.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';

class QuotesRepositoryMock implements IQuotesRepository {
  @override
  Future<List<QuoteSummaryModel>> fetchQuotes() async {
    return [QuoteSummaryModel(symbol: "BTC", price: "10000"), QuoteSummaryModel(symbol: "ETH", price: "2000")];
  }

  @override
  Future<QuoteDetailModel> fetchQuote({required String symbol}) async {
    return QuoteDetailModel(
      symbol: "BTC",
      priceChange: "-1",
      askPrice: "1",
      askQty: "1",
      bidPrice: "1",
      bidQty: "1",
      closeTime: "1",
      count: "1",
      firstId: "1",
      highPrice: "1",
      lastId: "1",
      lastPrice: "1",
      lastQty: "1",
      lowPrice: "1",
      openPrice: "1",
      openTime: "1",
      prevClosePrice: "1",
      priceChangePercent: "1",
      quoteVolume: "1",
      volume: "1",
      weightedAvgPrice: "1",
    );
  }
}
