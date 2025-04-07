import 'package:flutter_ddd/core/mappers/currency_detail_mapper.dart';
import 'package:flutter_ddd/core/mappers/currency_summary_mapper.dart';
import 'package:flutter_ddd/domain/entities/currency_detail_entity.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/domain/repositories/currency_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrenciesService {
  ICurrencyRepository currencyRepository = Modular.get<ICurrencyRepository>();

  Future<CurrencyDetailEntity> getCurrency({required String currencySymbol}) async {
    final model = await currencyRepository.fetchCurrency(currencySymbol: currencySymbol);
    return model.toEntity();
  }

  Future<List<CurrencySummaryEntity>> getCurrencies() async {
    final models = await currencyRepository.fetchCurrencies();
    return models.map((model) => model.toEntity()).toList();
  }
}
