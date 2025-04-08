import 'package:flutter/material.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/quote_detail_controller.dart';
import 'package:flutter_ddd/app/presentation/quote_detail/widgets/quote_detail_widget.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuoteScreen extends StatefulWidget {
  final String quoteSymbol;
  const QuoteScreen({super.key, required this.quoteSymbol});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  QuoteController quoteController = Modular.get<QuoteController>();

  @override
  void initState() {
    quoteController.getQuote(quoteSymbol: widget.quoteSymbol);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.quoteSymbol)),
      body: Observer(
        builder: (_) {
          return FetchResult(fetchStore: quoteController.quoteDetail, body: QuoteDetailWidget(quote: quoteController.quoteDetail.data!), errorChild: Text('error'));
        }
      ),
    );
  }
}
