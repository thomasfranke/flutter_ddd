import 'package:flutter/material.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/presentation/home/widgets/currency_summary_widget.dart';
import 'package:flutter_ddd/presentation/home/widgets/search_widget.dart';
import 'package:flutter_ddd/presentation/home/home_controller.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result_list.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Modular.get<HomeController>();

  @override
  void initState() {
    homeController.getCurrencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Coins')),
      body: Observer(
        builder:
            (_) => FetchResultList(
              head: SearchWidget(),
              fetchStore: homeController.currencySummaryList,
              itemBuilder: (CurrencySummaryEntity currency) => CurrencySummaryWidget(currency: currency),
            ),
      ),
    );
  }
}
