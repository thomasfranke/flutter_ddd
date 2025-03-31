

import 'package:flutter_ddd/ui/currency/currency_controller.dart';
import 'package:flutter_ddd/ui/currency/currency_module.dart';
import 'package:flutter_ddd/ui/home/home_controller.dart';
import 'package:flutter_ddd/ui/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(HomeController.new);
    i.addSingleton(CurrencyController.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/currency/', module: CurrencyModule());
  }
}
