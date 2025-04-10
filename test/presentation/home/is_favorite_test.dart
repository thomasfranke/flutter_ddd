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
  });

  test('isFavorite deve retornar true para símbolo favoritado', () {
    homeController.favoritesList.data = ['BTC', 'ETH'];
    expect(homeController.isFavorite('BTC'), isTrue);
    expect(homeController.isFavorite('DOGE'), isFalse);
  });
}
