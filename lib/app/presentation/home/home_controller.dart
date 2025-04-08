import 'package:flutter_ddd/app/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/app/domain/usecases/currency_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  CurrencyUseCases currencyUseCases = Modular.get<CurrencyUseCases>();

  @observable
  FetchStore<List<CurrencySummaryEntity>> currencySummaryList = FetchStore([]);

  getCurrencies({String filter = ""}) async {
    return await currencySummaryList.fetch(currencyUseCases.loadCurrencies(filter: filter));
  }
}
