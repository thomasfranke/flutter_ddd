import 'package:flutter/material.dart';
import 'package:flutter_ddd/app_controller.dart';
import 'package:flutter_ddd/core/l10n/gen/app_localizations.dart';
import 'package:flutter_ddd/shared/theme/dark_mode.dart';
import 'package:flutter_ddd/shared/theme/light_mode.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Modular.get();

    return Observer(
      builder: (context) {
        return MaterialApp.router(
          key: ValueKey(appController.locale.toString()),
          title: 'Flutter DDD',
          supportedLocales: const [Locale('en'), Locale('pt')],
          locale: appController.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: appController.isDarkMode ? darkTheme : lightTheme,
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}
