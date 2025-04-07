import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencySummaryWidget extends StatelessWidget {
  final CurrencySummaryEntity currency;
  const CurrencySummaryWidget({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Bounceable(
        onTap: () => Modular.to.pushNamed('/currency/', arguments: {'currencySymbol': currency.symbol}),
        child: Card(
          child: ListTile(
            leading: Bounceable(onTap: () => log('Favorites coming soon.'), child: Icon(Icons.star_border)),
            title: Text(currency.symbol),
            subtitle: Text(currency.price),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ),
      ),
    );
  }
}
