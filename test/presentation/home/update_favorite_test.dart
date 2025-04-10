import 'package:flutter_ddd/app/domain/usecases/favorites_usecases.dart';
// import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFavoritesUseCases extends Mock implements FavoritesUsecases {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  // late HomeController homeController;
  // late MockFavoritesUseCases mockFavoritesUseCases;

  setUp(() {
    Modular.init(AppModule());
    // mockFavoritesUseCases = MockFavoritesUseCases();
    // homeController = HomeController();
  });

  test('updateFavorite deve atualizar a lista de favoritos', () async {
    // when(() => mockFavoritesUseCases.updateFavorite(symbol: any(named: 'symbol'))).thenAnswer((_) async => ['BTC', 'ETH']);

    // await homeController.updateFavorite(symbol: 'ETH');

    // expect(homeController.favoritesList.data, containsAll(['BTC', 'ETH']));
  });
}
