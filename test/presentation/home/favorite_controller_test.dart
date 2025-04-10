import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late HomeController homeController;

  setUp(() {
    Modular.init(AppModule());
    homeController = HomeController();
    homeController.quotesList.data = ([
      QuoteSummaryEntity(symbol: 'BTC', price: "1"),
      QuoteSummaryEntity(symbol: 'ETH', price: "2"),
      QuoteSummaryEntity(symbol: 'XRP', price: "3"),
    ]);
  });

  test('Favorites Controller', () {
    homeController.favoritesList.data = (['BTC', 'ETH']);
    final result = homeController.favoriteQuotes;

    expect(result.length, 2);
    expect(result.map((e) => e.symbol), containsAll(['BTC', 'ETH']));
    expect(result.map((e) => e.symbol), isNot(contains('XRP')));

    /// Empty List
    homeController.favoritesList.data = ([]);
    final result2 = homeController.favoriteQuotes;
    expect(result2.length, 0);
  });
}
