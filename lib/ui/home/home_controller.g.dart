// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$homeDataAtom =
      Atom(name: 'HomeControllerBase.homeData', context: context);

  @override
  FetchStore<HomeDataEntity> get homeData {
    _$homeDataAtom.reportRead();
    return super.homeData;
  }

  @override
  set homeData(FetchStore<HomeDataEntity> value) {
    _$homeDataAtom.reportWrite(value, super.homeData, () {
      super.homeData = value;
    });
  }

  @override
  String toString() {
    return '''
homeData: ${homeData}
    ''';
  }
}
