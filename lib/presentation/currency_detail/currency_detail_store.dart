import 'package:flutter_ddd/domain/entities/currency_detail_entity.dart';
import 'package:flutter_ddd/domain/usecases/currency_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'currency_detail_store.g.dart';

class CurrencyStore = CurrencyStoreBase with _$CurrencyStore;

abstract class CurrencyStoreBase with Store {
  CurrencyUseCases currencyUseCases = Modular.get<CurrencyUseCases>();

  @observable
  FetchStore<CurrencyDetailEntity> currencyDetail = FetchStore(CurrencyDetailEntity(symbol: ''));

  getCurrency({required String currencySymbol}) async {
    return await currencyDetail.fetch(currencyUseCases.loadCurrency(currencySymbol: currencySymbol));
  }
}
