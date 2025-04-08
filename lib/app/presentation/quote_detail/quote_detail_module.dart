import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_controller.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyModule extends Module {
  CurrencyModule();

  @override
  void binds(i) {
    i.addSingleton(QuoteController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => QuoteScreen(symbol: r.args.data['symbol']));
  }
}
