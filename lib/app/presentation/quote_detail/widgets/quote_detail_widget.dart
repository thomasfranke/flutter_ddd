import 'package:flutter/cupertino.dart';
import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';

class QuoteDetailWidget extends StatelessWidget {
  final QuoteDetailEntity quote;
  const QuoteDetailWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(quote.symbol), Text(quote.priceChange)]);
  }
}
