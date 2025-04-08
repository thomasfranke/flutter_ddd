import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuoteSummaryWidget extends StatelessWidget {
  final QuoteSummaryEntity quote;
  const QuoteSummaryWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Bounceable(
        onTap: () => Modular.to.pushNamed('/quote/', arguments: {'symbol': quote.symbol}),
        child: Card(
          child: ListTile(
            leading: Bounceable(onTap: () => log('Favorites coming soon.'), child: Icon(Icons.star_border)),
            title: Text(quote.symbol),
            subtitle: Text(quote.price),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ),
      ),
    );
  }
}
