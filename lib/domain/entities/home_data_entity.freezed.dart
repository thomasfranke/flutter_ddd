// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDataEntity {
  List<CurrenciesModel> get currencies;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<HomeDataEntity> get copyWith =>
      _$HomeDataEntityCopyWithImpl<HomeDataEntity>(
          this as HomeDataEntity, _$identity);

  /// Serializes this HomeDataEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeDataEntity &&
            const DeepCollectionEquality()
                .equals(other.currencies, currencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(currencies));

  @override
  String toString() {
    return 'HomeDataEntity(currencies: $currencies)';
  }
}

/// @nodoc
abstract mixin class $HomeDataEntityCopyWith<$Res> {
  factory $HomeDataEntityCopyWith(
          HomeDataEntity value, $Res Function(HomeDataEntity) _then) =
      _$HomeDataEntityCopyWithImpl;
  @useResult
  $Res call({List<CurrenciesModel> currencies});
}

/// @nodoc
class _$HomeDataEntityCopyWithImpl<$Res>
    implements $HomeDataEntityCopyWith<$Res> {
  _$HomeDataEntityCopyWithImpl(this._self, this._then);

  final HomeDataEntity _self;
  final $Res Function(HomeDataEntity) _then;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_self.copyWith(
      currencies: null == currencies
          ? _self.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrenciesModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HomeDataEntity implements HomeDataEntity {
  const _HomeDataEntity({final List<CurrenciesModel> currencies = const []})
      : _currencies = currencies;
  factory _HomeDataEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeDataEntityFromJson(json);

  final List<CurrenciesModel> _currencies;
  @override
  @JsonKey()
  List<CurrenciesModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDataEntityCopyWith<_HomeDataEntity> get copyWith =>
      __$HomeDataEntityCopyWithImpl<_HomeDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeDataEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDataEntity &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @override
  String toString() {
    return 'HomeDataEntity(currencies: $currencies)';
  }
}

/// @nodoc
abstract mixin class _$HomeDataEntityCopyWith<$Res>
    implements $HomeDataEntityCopyWith<$Res> {
  factory _$HomeDataEntityCopyWith(
          _HomeDataEntity value, $Res Function(_HomeDataEntity) _then) =
      __$HomeDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call({List<CurrenciesModel> currencies});
}

/// @nodoc
class __$HomeDataEntityCopyWithImpl<$Res>
    implements _$HomeDataEntityCopyWith<$Res> {
  __$HomeDataEntityCopyWithImpl(this._self, this._then);

  final _HomeDataEntity _self;
  final $Res Function(_HomeDataEntity) _then;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_HomeDataEntity(
      currencies: null == currencies
          ? _self._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrenciesModel>,
    ));
  }
}

// dart format on
