import 'dart:developer';

import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/domain/services/currencies_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyUseCases {
  CurrenciesService currenciesService = Modular.get<CurrenciesService>();

  Future<List<CurrencySummaryEntity>> loadCurrenciesUseCase({String filter = ""}) async {
    log("loadCurrenciesUseCase: $filter");
    final allCurrencies = await currenciesService.getCurrencies();
    if (filter.isNotEmpty) {
      return allCurrencies.where((currency) => currency.symbol.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    return allCurrencies.take(10).toList();
  }
}
