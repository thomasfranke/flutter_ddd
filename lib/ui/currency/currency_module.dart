import 'package:flutter_ddd/ui/currency/currency_controller.dart';
import 'package:flutter_ddd/ui/currency/currency_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyModule extends Module {
  CurrencyModule();

  @override
  void binds(i) {
    i.addSingleton(CurrencyController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const CurrencyScreen());
  }
}
