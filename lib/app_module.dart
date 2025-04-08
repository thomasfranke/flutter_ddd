import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/data/repositories/currency_repository_impl.dart';
import 'package:flutter_ddd/domain/repositories/currency_repository.dart';
import 'package:flutter_ddd/domain/services/currencies_service.dart';
import 'package:flutter_ddd/domain/usecases/currency_usecases.dart';
import 'package:flutter_ddd/presentation/currency_detail/currency_detail_controller.dart';
import 'package:flutter_ddd/presentation/currency_detail/currency_detail_module.dart';
import 'package:flutter_ddd/presentation/home/home_controller.dart';
import 'package:flutter_ddd/presentation/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    /// Data
    /// ViewModels
    i.addSingleton(HomeController.new);
    i.addSingleton(CurrencyController.new);

    /// Domain
    /// Use Cases
    i.addSingleton(CurrencyUseCases.new);

    /// Services
    i.addSingleton(CurrenciesService.new);

    /// Repositories
    i.addSingleton<ICurrencyRepository>(CurrencyRepositoryImpl.new);

    /// Core
    i.addSingleton(HttpClient.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/currency/', module: CurrencyModule());
  }
}
