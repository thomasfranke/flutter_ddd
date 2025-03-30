

import 'package:flutter_ddd/ui/home/home_controller.dart';
import 'package:flutter_ddd/ui/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  // AppModule();

  @override
  void binds(i) {
    i.addSingleton(HomeController.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    // r.module('/home/', module: HomeModule());
    // r.module('/product/', module: ProductModule());
  }
}
