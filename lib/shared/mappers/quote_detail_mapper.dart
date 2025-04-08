import 'package:flutter_ddd/app/data/models/quote_detail_model.dart';
import 'package:flutter_ddd/app/domain/entities/quote_detail_entity.dart';

extension QuoteDetailMapper on QuoteDetailModel {
  QuoteDetailEntity toEntity() {
    return QuoteDetailEntity(symbol: symbol, priceChange: priceChange);
  }
}
