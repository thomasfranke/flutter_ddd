import 'package:flutter/material.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/quote_summary_widget.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/search_widget.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
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
      body: Observer(
        builder:
            (_) => FetchResultList(
              head: SearchWidget(),
              fetchStore: homeController.quoteSummaryList,
              itemBuilder: (QuoteSummaryEntity quote) => QuoteSummaryWidget(quote: quote),
            ),
      ),
    );
  }
}
