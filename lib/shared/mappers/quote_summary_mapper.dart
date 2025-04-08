import 'package:flutter_ddd/app/data/models/quote_summary_model.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';

extension QuoteSummaryMapper on QuoteSummaryModel {
  QuoteSummaryEntity toEntity() {
    return QuoteSummaryEntity(symbol: symbol, price: price);
  }
}
