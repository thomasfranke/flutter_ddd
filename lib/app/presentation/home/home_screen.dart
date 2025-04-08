import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ddd/app/presentation/home/tabs/favorites_tab.dart';
import 'package:flutter_ddd/app/presentation/home/tabs/quotes_tab.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Modular.get<HomeController>();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [QuotesTab(), FavoritesTab()];

    return Scaffold(
      appBar: AppBar(title: Text('Flutter Coins')),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Modular.to.pushNamed('/settings');
              },
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
        onTap: (index) {
          setState(() {
            currentIndex = index;
            log('index = $index');
          });
        },
      ),
    );
  }
}
