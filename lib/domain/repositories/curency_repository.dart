import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/data/models/currency_model.dart';

abstract class ICurrencyRepository {
  Future<List<CurrenciesModel>> fetchCurrencies();
  Future<CurrencyModel> fetchCurrency();
}
