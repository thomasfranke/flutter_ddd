import 'package:flutter_ddd/presentation/currency/currency_store.dart';
import 'package:flutter_ddd/presentation/currency/currency_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyModule extends Module {
  CurrencyModule();

  @override
  void binds(i) {
    i.addSingleton(CurrencyStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const CurrencyScreen());
  }
}
