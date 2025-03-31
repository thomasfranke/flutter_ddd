import 'package:json_annotation/json_annotation.dart';

part 'currency_model.g.dart';

@JsonSerializable(createToJson: false)
class CurrencyModel {
  @JsonKey(name: 'symbol')
  final String symbol;

  @JsonKey(name: 'price')
  final double price;

  CurrencyModel({
    required this.symbol,
    required this.price,
  });

    static List<CurrencyModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => CurrencyModel.fromJson(l)).toList();
  }

  factory CurrencyModel.fromJson(Map<String, dynamic> map) => _$CurrencyModelFromJson(map);

}
