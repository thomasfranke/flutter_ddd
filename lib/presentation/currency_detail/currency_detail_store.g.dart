// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrencyStore on CurrencyStoreBase, Store {
  late final _$currencyDetailAtom = Atom(
    name: 'CurrencyStoreBase.currencyDetail',
    context: context,
  );

  @override
  FetchStore<CurrencyDetailEntity> get currencyDetail {
    _$currencyDetailAtom.reportRead();
    return super.currencyDetail;
  }

  @override
  set currencyDetail(FetchStore<CurrencyDetailEntity> value) {
    _$currencyDetailAtom.reportWrite(value, super.currencyDetail, () {
      super.currencyDetail = value;
    });
  }

  @override
  String toString() {
    return '''
currencyDetail: ${currencyDetail}
    ''';
  }
}
