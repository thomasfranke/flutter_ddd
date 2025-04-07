import 'package:flutter_ddd/data/models/currency_summary_model.dart';
import 'package:flutter_ddd/data/models/currency_detail_model.dart';
import 'package:flutter_ddd/domain/repositories/currency_repository.dart';

class CurrencyRepositoryMock implements ICurrencyRepository {
  @override
  Future<List<CurrencySummaryModel>> fetchCurrencies() async {
    return [CurrencySummaryModel(symbol: "BTC", price: "10000"), CurrencySummaryModel(symbol: "ETH", price: "2000")];
  }

  @override
  Future<CurrencyDetailModel> fetchCurrency({required String currencySymbol}) async {
    return CurrencyDetailModel(
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
