import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/domain/usecases/currency_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  CurrencyUseCases currencyUseCases = Modular.get<CurrencyUseCases>();

  @observable
  FetchStore<List<CurrencySummaryEntity>> currencySummaryList = FetchStore([]);

  getCurrencies({String filter = ""}) async {
    return await currencySummaryList.fetch(currencyUseCases.loadCurrencies(filter: filter));
  }
}
