import 'dart:developer';

import 'package:flutter_ddd/app/domain/entities/currency_detail_entity.dart';
import 'package:flutter_ddd/app/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/app/domain/services/currencies_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyUseCases {
  CurrenciesService currenciesService = Modular.get<CurrenciesService>();

  Future<CurrencyDetailEntity> loadCurrency({required String currencySymbol}) async {
    return await currenciesService.getCurrency(currencySymbol: currencySymbol);
  }

  Future<List<CurrencySummaryEntity>> loadCurrencies({String filter = ""}) async {
    log("loadCurrenciesUseCase: $filter");
    final allCurrencies = await currenciesService.getCurrencies();
    if (filter.isNotEmpty) {
      return allCurrencies.where((currency) => currency.symbol.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    return allCurrencies.take(10).toList();
  }
}
