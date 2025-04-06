import 'package:flutter/material.dart';

class CurrencyScreen extends StatefulWidget {
  final String currencySymbol;
  const CurrencyScreen({super.key, required this.currencySymbol});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.currencySymbol)), body: Center(child: Text("Coming soon...")));
  }
}
