import 'package:json_annotation/json_annotation.dart';

part 'currency_summary_entity.g.dart';

@JsonSerializable(createToJson: false)
class CurrencySummaryEntity {
  final String symbol;
  final String price;

  CurrencySummaryEntity({required this.symbol, required this.price});

  static List<CurrencySummaryEntity> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => CurrencySummaryEntity.fromJson(l)).toList();
  }

  factory CurrencySummaryEntity.fromJson(Map<String, dynamic> map) => _$CurrencySummaryEntityFromJson(map);
}
