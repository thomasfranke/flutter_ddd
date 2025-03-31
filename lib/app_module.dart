import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/data/repositories/currency_repository.dart';
import 'package:flutter_ddd/domain/services/currencies_service.dart';
import 'package:flutter_ddd/domain/usecases/home_usecase.dart';
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
    i.addSingleton(HomeUseCase.new);
    i.addSingleton(CurrenciesService.new);
    i.addSingleton(CurrencyRepository.new);
    i.addSingleton(HttpClient.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/currency/', module: CurrencyModule());
  }
}
