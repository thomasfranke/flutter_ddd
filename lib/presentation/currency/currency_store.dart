import 'package:mobx/mobx.dart';
part 'currency_store.g.dart';

class CurrencyStore = CurrencyStoreBase with _$CurrencyStore;

abstract class CurrencyStoreBase with Store {}
