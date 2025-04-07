import 'package:flutter/material.dart';
import 'package:flutter_ddd/presentation/currency_detail/currency_detail_store.dart';
import 'package:flutter_ddd/presentation/currency_detail/widgets/currency_detail_widget.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyScreen extends StatefulWidget {
  final String currencySymbol;
  const CurrencyScreen({super.key, required this.currencySymbol});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  CurrencyStore currencyStore = Modular.get<CurrencyStore>();

  @override
  void initState() {
    currencyStore.getCurrency(currencySymbol: widget.currencySymbol);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.currencySymbol)),
      body: FetchResult(fetchStore: currencyStore.currencyDetail, body: CurrencyDetailWidget(currency: currencyStore.currencyDetail.data!), errorChild: Text('error')),
    );
  }
}
