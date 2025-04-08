import 'package:flutter_ddd/app/presentation/currency_detail/currency_detail_controller.dart';
import 'package:flutter_ddd/app/presentation/currency_detail/currency_detail_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyModule extends Module {
  CurrencyModule();

  @override
  void binds(i) {
    i.addSingleton(CurrencyController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => CurrencyScreen(currencySymbol: r.args.data['currencySymbol']));
  }
}
