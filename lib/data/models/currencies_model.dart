import 'package:json_annotation/json_annotation.dart';

part 'currencies_model.g.dart';

@JsonSerializable(createToJson: true)
class CurrenciesModel {
  final String symbol;
  final String price;

  CurrenciesModel({required this.symbol, required this.price});

  static List<CurrenciesModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => CurrenciesModel.fromJson(l)).toList();
  }

  factory CurrenciesModel.fromJson(Map<String, dynamic> map) => _$CurrenciesModelFromJson(map);

  Map<String, dynamic> toJson() => _$CurrenciesModelToJson(this);
}
