import 'package:json_annotation/json_annotation.dart';

part 'currency_summary_model.g.dart';

@JsonSerializable(createToJson: false)
class CurrencySummaryModel {
  final String symbol;
  final String price;

  CurrencySummaryModel({required this.symbol, required this.price});

  static List<CurrencySummaryModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => CurrencySummaryModel.fromJson(l)).toList();
  }

  factory CurrencySummaryModel.fromJson(Map<String, dynamic> map) => _$CurrencySummaryModelFromJson(map);
}
