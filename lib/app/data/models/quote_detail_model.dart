import 'package:flutter_ddd/shared/converters/string_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote_detail_model.g.dart';

@JsonSerializable(createToJson: false)
class QuoteDetailModel {
  final String symbol;

  @StringConverter()
  final String priceChange;

  @StringConverter()
  final String priceChangePercent;

  @StringConverter()
  final String weightedAvgPrice;

  @StringConverter()
  final String prevClosePrice;

  @StringConverter()
  final String lastPrice;

  @StringConverter()
  final String lastQty;

  @StringConverter()
  final String bidPrice;

  @StringConverter()
  final String bidQty;

  @StringConverter()
  final String askPrice;

  @StringConverter()
  final String askQty;

  @StringConverter()
  final String openPrice;

  @StringConverter()
  final String highPrice;

  @StringConverter()
  final String lowPrice;

  @StringConverter()
  final String volume;

  @StringConverter()
  final String quoteVolume;

  @StringConverter()
  final String openTime;

  @StringConverter()
  final String closeTime;

  @StringConverter()
  final String firstId;

  @StringConverter()
  final String lastId;

  @StringConverter()
  final String count;

  QuoteDetailModel({
    required this.symbol,
    required this.priceChange,
    required this.priceChangePercent,
    required this.weightedAvgPrice,
    required this.prevClosePrice,
    required this.lastPrice,
    required this.lastQty,
    required this.bidPrice,
    required this.bidQty,
    required this.askPrice,
    required this.askQty,
    required this.openPrice,
    required this.highPrice,
    required this.lowPrice,
    required this.volume,
    required this.quoteVolume,
    required this.openTime,
    required this.closeTime,
    required this.firstId,
    required this.lastId,
    required this.count,
  });

  static List<QuoteDetailModel> fromList(List<Map<String, dynamic>> list) => list.map((l) => QuoteDetailModel.fromJson(l)).toList();

  factory QuoteDetailModel.fromJson(Map<String, dynamic> map) => _$QuoteDetailModelFromJson(map);
}
