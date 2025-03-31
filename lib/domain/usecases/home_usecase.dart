import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/domain/entities/home_data_entity.dart';
import 'package:flutter_ddd/domain/services/currencies_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeUseCase {
  CurrenciesService currenciesService = Modular.get<CurrenciesService>();

  Future<HomeDataEntity> loadHomeDataUseCase() async {
    HomeDataEntity homeDataEntity = HomeDataEntity();
    List<CurrenciesModel> currrencies = await currenciesService.getCurrencies();

    homeDataEntity.currencies = currrencies;
    return homeDataEntity;
  }
}
