import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class HomeDataEntity {
  List<CurrenciesModel> currencies;

  HomeDataEntity({this.currencies = const []});
}
