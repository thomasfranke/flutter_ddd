import 'package:flutter_ddd/presentation/home/home_store.dart';
import 'package:flutter_ddd/presentation/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  HomeModule();

  @override
  void binds(i) {
    i.addSingleton(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const HomeScreen());
  }
}
