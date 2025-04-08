import 'package:json_annotation/json_annotation.dart';

part 'quote_summary_model.g.dart';

@JsonSerializable(createToJson: false)
class QuoteSummaryModel {
  final String quoteSymbol;
  final String price;

  QuoteSummaryModel({required this.quoteSymbol, required this.price});

  static List<QuoteSummaryModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => QuoteSummaryModel.fromJson(l)).toList();
  }

  factory QuoteSummaryModel.fromJson(Map<String, dynamic> map) => _$QuoteSummaryModelFromJson(map);
}
