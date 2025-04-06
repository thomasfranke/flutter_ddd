import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencySummaryWidget extends StatelessWidget {
  final CurrencySummaryEntity currency;
  const CurrencySummaryWidget({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () => Modular.to.pushNamed('/currency/', arguments: {'currencySymbol': currency.symbol}),
      child: Padding(padding: const EdgeInsets.all(8.0), child: Text("${currency.symbol} | ${currency.price}")),
    );
  }
}
