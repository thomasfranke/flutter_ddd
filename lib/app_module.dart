import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/app/data/repositories/quote_repository_impl.dart';
import 'package:flutter_ddd/app/domain/repositories/quote_repository.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_ddd/app/domain/usecases/quote_usecases.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_controller.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_module.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    /// Data
    /// ViewModels
    i.addSingleton(HomeController.new);
    i.addSingleton(QuoteController.new);

    /// Domain
    /// Use Cases
    i.addSingleton(QuoteUseCases.new);

    /// Services
    i.addSingleton(QuotesService.new);

    /// Repositories
    i.addSingleton<IQuoteRepository>(QuoteRepositoryImpl.new);

    /// Core
    i.addSingleton(HttpClient.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/quote/', module: CurrencyModule());
  }
}
