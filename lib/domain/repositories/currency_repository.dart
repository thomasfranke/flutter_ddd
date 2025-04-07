import 'package:flutter_ddd/data/models/currency_summary_model.dart';
import 'package:flutter_ddd/data/models/currency_detail_model.dart';

abstract class ICurrencyRepository {
  Future<List<CurrencySummaryModel>> fetchCurrencies();
  Future<CurrencyDetailModel> fetchCurrency({required String currencySymbol});
}
