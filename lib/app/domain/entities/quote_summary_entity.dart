import 'package:json_annotation/json_annotation.dart';

part 'quote_summary_entity.g.dart';

@JsonSerializable(createToJson: false)
class QuoteSummaryEntity {
  final String quoteSymbol;
  final String price;

  QuoteSummaryEntity({required this.quoteSymbol, required this.price});

  static List<QuoteSummaryEntity> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => QuoteSummaryEntity.fromJson(l)).toList();
  }

  factory QuoteSummaryEntity.fromJson(Map<String, dynamic> map) => _$QuoteSummaryEntityFromJson(map);
}
