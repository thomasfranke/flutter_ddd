// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuoteController on QuoteControllerBase, Store {
  late final _$quoteDetailAtom =
      Atom(name: 'QuoteControllerBase.quoteDetail', context: context);

  @override
  FetchStore<QuoteDetailEntity> get quoteDetail {
    _$quoteDetailAtom.reportRead();
    return super.quoteDetail;
  }

  @override
  set quoteDetail(FetchStore<QuoteDetailEntity> value) {
    _$quoteDetailAtom.reportWrite(value, super.quoteDetail, () {
      super.quoteDetail = value;
    });
  }

  @override
  String toString() {
    return '''
quoteDetail: ${quoteDetail}
    ''';
  }
}
