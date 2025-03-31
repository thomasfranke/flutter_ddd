import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/data/repositories/currency_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrenciesService {
  CurrencyRepository currencyRepository = Modular.get<CurrencyRepository>();

  Future<void> getCurrency() async {
    return;
  }

  Future<List<CurrenciesModel>> getCurrencies() async {
    return currencyRepository.fetchCurrencies();
  }
}
