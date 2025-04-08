import 'package:flutter_ddd/data/models/currency_detail_model.dart';
import 'package:flutter_ddd/domain/entities/currency_detail_entity.dart';

extension CurrencyDetailMapper on CurrencyDetailModel {
  CurrencyDetailEntity toEntity() {
    return CurrencyDetailEntity(symbol: symbol, priceChange: priceChange);
  }
}
