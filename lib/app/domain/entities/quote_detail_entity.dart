import 'package:json_annotation/json_annotation.dart';

part 'quote_detail_entity.g.dart';

@JsonSerializable(createToJson: false)
class QuoteDetailEntity {
  final String symbol;
  final String priceChange;
  final String priceChangePercent;
  final String weightedAvgPrice;
  final String prevClosePrice;
  final String lastPrice;
  final String lastQty;
  final String bidPrice;
  final String bidQty;
  final String askPrice;
  final String askQty;
  final String openPrice;
  final String highPrice;
  final String lowPrice;
  final String volume;
  final String quoteVolume;
  final String openTime;
  final String closeTime;
  final String firstId;
  final String lastId;
  final String count;

  QuoteDetailEntity({
    this.symbol = "",
    this.priceChange = "",
    this.priceChangePercent = "",
    this.weightedAvgPrice = "",
    this.prevClosePrice = "",
    this.lastPrice = "",
    this.lastQty = "",
    this.bidPrice = "",
    this.bidQty = "",
    this.askPrice = "",
    this.askQty = "",
    this.openPrice = "",
    this.highPrice = "",
    this.lowPrice = "",
    this.volume = "",
    this.quoteVolume = "",
    this.openTime = "",
    this.closeTime = "",
    this.firstId = "",
    this.lastId = "",
    this.count = "",
  });

  static List<QuoteDetailEntity> fromList(List<Map<String, dynamic>> list) {
    return list.map((l) => QuoteDetailEntity.fromJson(l)).toList();
  }

  factory QuoteDetailEntity.fromJson(Map<String, dynamic> map) => _$QuoteDetailEntityFromJson(map);
}
