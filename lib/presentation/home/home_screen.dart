import 'package:flutter/material.dart';
import 'package:flutter_ddd/presentation/home/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeStore homeStore = Modular.get<HomeStore>();

  @override
  void initState() {
    homeStore.getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Coins')),
      body: SingleChildScrollView(
        child: Center(
          child: Observer(
            builder: (_) {
              return Column(
                children:
                    homeStore.homeData.data!.currencies.map((currency) {
                      return Padding(padding: const EdgeInsets.all(8.0), child: Text("${currency.symbol} | ${currency.price}"));
                    }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
