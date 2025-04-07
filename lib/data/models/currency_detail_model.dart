import 'package:json_annotation/json_annotation.dart';

part 'currency_detail_model.g.dart';

@JsonSerializable(createToJson: false)
class CurrencyDetailModel {
  final String symbol;
  // final double priceChange;
  // final String priceChangePercent;
  // final String weightedAvgPrice;
  // final String prevClosePrice;
  // final String lastPrice;
  // final String lastQty;
  // final String bidPrice;
  // final String bidQty;
  // final String askPrice;
  // final String askQty;
  // final String openPrice;
  // final String highPrice;
  // final String lowPrice;
  // final String volume;
  // final String quoteVolume;
  // final String openTime;
  // final String closeTime;
  // final String firstId;
  // final String lastId;
  // final String count;

  CurrencyDetailModel({
    required this.symbol,
    // required this.priceChange,
    // required this.priceChangePercent,
    // required this.weightedAvgPrice,
    // required this.prevClosePrice,
    // required this.lastPrice,
    // required this.lastQty,
    // required this.bidPrice,
    // required this.bidQty,
    // required this.askPrice,
    // required this.askQty,
    // required this.openPrice,
    // required this.highPrice,
    // required this.lowPrice,
    // required this.volume,
    // required this.quoteVolume,
    // required this.openTime,
    // required this.closeTime,
    // required this.firstId,
    // required this.lastId,
    // required this.count,
  });

  static List<CurrencyDetailModel> fromList(List<Map<String, dynamic>> list) => list.map((l) => CurrencyDetailModel.fromJson(l)).toList();

  factory CurrencyDetailModel.fromJson(Map<String, dynamic> map) => _$CurrencyDetailModelFromJson(map);
}
