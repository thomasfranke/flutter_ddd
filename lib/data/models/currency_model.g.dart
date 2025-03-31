// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    CurrencyModel(
      symbol: json['symbol'] as String,
      priceChange: (json['priceChange'] as num).toDouble(),
      priceChangePercent: (json['priceChangePercent'] as num).toDouble(),
      weightedAvgPrice: (json['weightedAvgPrice'] as num).toDouble(),
      prevClosePrice: (json['prevClosePrice'] as num).toDouble(),
      lastPrice: (json['lastPrice'] as num).toDouble(),
      lastQty: (json['lastQty'] as num).toDouble(),
      bidPrice: (json['bidPrice'] as num).toDouble(),
      bidQty: (json['bidQty'] as num).toDouble(),
      askPrice: (json['askPrice'] as num).toDouble(),
      askQty: (json['askQty'] as num).toDouble(),
      openPrice: (json['openPrice'] as num).toDouble(),
      highPrice: (json['highPrice'] as num).toDouble(),
      lowPrice: (json['lowPrice'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      quoteVolume: (json['quoteVolume'] as num).toDouble(),
      openTime: (json['openTime'] as num).toDouble(),
      closeTime: (json['closeTime'] as num).toDouble(),
      firstId: (json['firstId'] as num).toDouble(),
      lastId: (json['lastId'] as num).toDouble(),
      count: (json['count'] as num).toDouble(),
    );
