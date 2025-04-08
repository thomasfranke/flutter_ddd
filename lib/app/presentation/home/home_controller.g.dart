// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$quoteSummaryListAtom =
      Atom(name: 'HomeControllerBase.quoteSummaryList', context: context);

  @override
  FetchStore<List<QuoteSummaryEntity>> get quoteSummaryList {
    _$quoteSummaryListAtom.reportRead();
    return super.quoteSummaryList;
  }

  @override
  set quoteSummaryList(FetchStore<List<QuoteSummaryEntity>> value) {
    _$quoteSummaryListAtom.reportWrite(value, super.quoteSummaryList, () {
      super.quoteSummaryList = value;
    });
  }

  @override
  String toString() {
    return '''
quoteSummaryList: ${quoteSummaryList}
    ''';
  }
}
