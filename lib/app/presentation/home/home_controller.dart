import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/domain/usecases/quote_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  QuoteUseCases quoteUseCases = Modular.get<QuoteUseCases>();

  @observable
  FetchStore<List<QuoteSummaryEntity>> quoteSummaryList = FetchStore([]);

  getCurrencies({String filter = ""}) async {
    return await quoteSummaryList.fetch(quoteUseCases.loadQuotes(filter: filter));
  }
}
