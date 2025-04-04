// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDataEntity _$HomeDataEntityFromJson(Map<String, dynamic> json) =>
    _HomeDataEntity(
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => CurrenciesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeDataEntityToJson(_HomeDataEntity instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };
