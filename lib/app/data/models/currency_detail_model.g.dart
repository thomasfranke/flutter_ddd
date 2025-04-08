// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyDetailModel _$CurrencyDetailModelFromJson(Map<String, dynamic> json) =>
    CurrencyDetailModel(
      symbol: json['symbol'] as String,
      priceChange: const StringConverter().fromJson(json['priceChange']),
      priceChangePercent:
          const StringConverter().fromJson(json['priceChangePercent']),
      weightedAvgPrice:
          const StringConverter().fromJson(json['weightedAvgPrice']),
      prevClosePrice: const StringConverter().fromJson(json['prevClosePrice']),
      lastPrice: const StringConverter().fromJson(json['lastPrice']),
      lastQty: const StringConverter().fromJson(json['lastQty']),
      bidPrice: const StringConverter().fromJson(json['bidPrice']),
      bidQty: const StringConverter().fromJson(json['bidQty']),
      askPrice: const StringConverter().fromJson(json['askPrice']),
      askQty: const StringConverter().fromJson(json['askQty']),
      openPrice: const StringConverter().fromJson(json['openPrice']),
      highPrice: const StringConverter().fromJson(json['highPrice']),
      lowPrice: const StringConverter().fromJson(json['lowPrice']),
      volume: const StringConverter().fromJson(json['volume']),
      quoteVolume: const StringConverter().fromJson(json['quoteVolume']),
      openTime: const StringConverter().fromJson(json['openTime']),
      closeTime: const StringConverter().fromJson(json['closeTime']),
      firstId: const StringConverter().fromJson(json['firstId']),
      lastId: const StringConverter().fromJson(json['lastId']),
      count: const StringConverter().fromJson(json['count']),
    );
