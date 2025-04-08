import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/usecases/quotes_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'quote_detail_controller.g.dart';

class QuoteController = QuoteControllerBase with _$QuoteController;

abstract class QuoteControllerBase with Store {
  QuotesUseCases quoteUseCases = Modular.get<QuotesUseCases>();

  @observable
  FetchStore<QuoteDetailEntity> quoteDetail = FetchStore(QuoteDetailEntity(symbol: ''));

  getQuote({required String symbol}) async {
    return await quoteDetail.fetch(quoteUseCases.loadQuote(symbol: symbol));
  }
}
