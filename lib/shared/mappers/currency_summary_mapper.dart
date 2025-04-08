import 'package:flutter_ddd/data/models/currency_summary_model.dart';
import 'package:flutter_ddd/domain/entities/currency_summary_entity.dart';

extension CurrencySummaryMapper on CurrencySummaryModel {
  CurrencySummaryEntity toEntity() {
    return CurrencySummaryEntity(symbol: symbol, price: price);
  }
}
