import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  HomeModule();

  @override
  void binds(i) {
    i.addSingleton(HomeController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const HomeScreen());
  }
}
