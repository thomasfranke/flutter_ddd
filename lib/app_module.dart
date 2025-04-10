import 'package:flutter_ddd/app/data/repositories/favorites_repository_impl.dart';
import 'package:flutter_ddd/app/domain/repositories/favorites_repository.dart';
import 'package:flutter_ddd/app/domain/services/favorites_service.dart';
import 'package:flutter_ddd/app/domain/usecases/favorites_usecases.dart';
import 'package:flutter_ddd/app/presentation/feedback/feedback_controller.dart';
import 'package:flutter_ddd/app/presentation/feedback/feedback_module.dart';
import 'package:flutter_ddd/app_controller.dart';
import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/app/data/repositories/quotes_repository_impl.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_ddd/app/domain/services/quotes_service.dart';
import 'package:flutter_ddd/app/domain/usecases/quotes_usecases.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_controller.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_module.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/home_module.dart';
import 'package:flutter_ddd/core/local_storage/local_storage_impl.dart';
import 'package:flutter_ddd/core/local_storage/secure_storage_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    /// Data
    /// Controllers
    i.addSingleton(AppController.new);
    i.addSingleton(FeedbackController.new);
    i.addSingleton(HomeController.new);
    i.addSingleton(QuoteController.new);

    /// Domain
    /// Use Cases
    i.addSingleton(QuotesUseCases.new);
    i.addSingleton(FavoritesUsecases.new);

    /// Services
    i.addSingleton(QuotesService.new);
    i.addSingleton(FavoritesService.new);

    /// Repositories
    i.addSingleton<IQuotesRepository>(QuotesRepositoryImpl.new);
    i.addSingleton<IFavoritesRepository>(FavoritesRepositoryImpl.new);

    /// Core
    i.addSingleton(HttpClient.new);

    /// Interface implementations registered independently, each following the IStorageService contract.
    /// This allows accessing each implementation separately while maintaining consistency through the shared interface.
    i.addLazySingleton(LocalStorageImpl.new);
    i.addLazySingleton(SecureStorageImpl.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/quote/', module: CurrencyModule());
    r.module('/feedback/', module: FeedbackModule());
  }
}
