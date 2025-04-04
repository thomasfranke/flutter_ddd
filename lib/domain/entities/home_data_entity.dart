import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_entity.freezed.dart';
part 'home_data_entity.g.dart';

@freezed
abstract class HomeDataEntity with _$HomeDataEntity {
  const factory HomeDataEntity({
    @Default([]) List<CurrenciesModel> currencies,
  }) = _HomeDataEntity;

  factory HomeDataEntity.fromJson(Map<String, Object?> json) => _$HomeDataEntityFromJson(json);
}
