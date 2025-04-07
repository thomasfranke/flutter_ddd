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
    return CurrencyDetailModel(symbol: "BTC");
  }
}
