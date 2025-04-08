import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';
import 'package:flutter_ddd/app/domain/usecases/quote_usecases.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'quote_detail_controller.g.dart';

class QuoteController = QuoteControllerBase with _$QuoteController;

abstract class QuoteControllerBase with Store {
  QuoteUseCases quoteUseCases = Modular.get<QuoteUseCases>();

  @observable
  FetchStore<QuoteDetailEntity> quoteDetail = FetchStore(QuoteDetailEntity(symbol: ''));

  getQuote({required String quoteSymbol}) async {
    return await quoteDetail.fetch(quoteUseCases.loadQuote(quoteSymbol: quoteSymbol));
  }
}
