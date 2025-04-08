import 'package:flutter/cupertino.dart';
import 'package:flutter_ddd/app/domain/entities/currency_detail_entity.dart';

class CurrencyDetailWidget extends StatelessWidget {
  final CurrencyDetailEntity currency;
  const CurrencyDetailWidget({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(currency.symbol), Text(currency.priceChange)]);
  }
}
