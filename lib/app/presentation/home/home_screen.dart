import 'package:flutter/material.dart';
import 'package:flutter_ddd/app/presentation/home/tabs/favorites_tab.dart';
import 'package:flutter_ddd/app/presentation/home/tabs/quotes_tab.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app_controller.dart';
import 'package:flutter_ddd/core/l10n/gen/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Modular.get<HomeController>();
  AppController appController = Modular.get<AppController>();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [QuotesTab(), FavoritesTab()];

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).title)),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(AppLocalizations.of(context).title, style: TextStyle(fontSize: 24))],
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Feedback'),
              onTap: () => Modular.to.pushNamed('/feedback'),
            ),
            ListTile(
              leading: Icon(Icons.color_lens),
              title: Row(
                children: [
                  Expanded(child: Text("Dark Mode")),
                  Observer(
                    builder: (context) {
                      return Switch(
                        value: appController.isDarkMode,
                        onChanged: (bool value) {
                          appController.isDarkMode = !appController.isDarkMode;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Quotes'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favotires'),
        ],
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
