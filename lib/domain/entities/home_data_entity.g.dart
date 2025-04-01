// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDataEntity _$HomeDataEntityFromJson(Map<String, dynamic> json) =>
    _HomeDataEntity(
      currencies:
          CurrenciesModel.fromJson(json['currencies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDataEntityToJson(_HomeDataEntity instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };
