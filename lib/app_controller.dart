import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {
  @observable
  Locale locale = const Locale('pt');

  @observable
  bool isDarkMode = false;

  @action
  void toggleLocale() {
    locale = locale.languageCode == 'pt' ? const Locale('en') : const Locale('pt');
  }

  @action
  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
  }
}
