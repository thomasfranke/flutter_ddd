import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/domain/repositories/curency_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrenciesService {
  ICurrencyRepository currencyRepository = Modular.get<ICurrencyRepository>();

  Future<void> getCurrency() async {
    return;
  }

  Future<List<CurrenciesModel>> getCurrencies() async {
    return currencyRepository.fetchCurrencies();
  }
}
