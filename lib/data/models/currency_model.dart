import 'package:json_annotation/json_annotation.dart';

part 'currency_model.g.dart';

@JsonSerializable(createToJson: false)
class CurrencyModel {
  final String symbol;
  final double priceChange;
  final double priceChangePercent;
  final double weightedAvgPrice;
  final double prevClosePrice;
  final double lastPrice;
  final double lastQty;
  final double bidPrice;
  final double bidQty;
  final double askPrice;
  final double askQty;
  final double openPrice;
  final double highPrice;
  final double lowPrice;
  final double volume;
  final double quoteVolume;
  final double openTime;
  final double closeTime;
  final double firstId;
  final double lastId;
  final double count;

  CurrencyModel({
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

  static List<CurrencyModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => CurrencyModel.fromJson(l)).toList();
  }

  factory CurrencyModel.fromJson(Map<String, dynamic> map) => _$CurrencyModelFromJson(map);
}
