import 'package:flutter/material.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_ddd/presentation/home/components/currency_summary_widget.dart';
import 'package:flutter_ddd/presentation/home/components/search_widget.dart';
import 'package:flutter_ddd/presentation/home/home_store.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result_list.dart';
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
    homeStore.getCurrencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Coins')),
      body: SingleChildScrollView(
        child: Center(
          child: Observer(
            builder:
                (_) => FetchResultList(
                  expand: false,
                  scroll: false,
                  head: SearchWidget(),
                  fetchStore: homeStore.currencySummaryList,
                  itemBuilder: (CurrencySummaryEntity currency) => CurrencySummaryWidget(currency: currency),
                ),
          ),
        ),
      ),
    );
  }
}
