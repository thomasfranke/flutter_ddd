import 'dart:developer';

import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/core/http/http_routes.dart';
import 'package:flutter_ddd/app/data/models/currency_summary_model.dart';
import 'package:flutter_ddd/app/data/models/currency_detail_model.dart';
import 'package:flutter_ddd/app/domain/repositories/currency_repository.dart';
import 'package:flutter_ddd/utils/result/result.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyRepositoryImpl implements ICurrencyRepository {
  final HttpClient _api = Modular.get();

  @override
  Future<List<CurrencySummaryModel>> fetchCurrencies() async {
    return await _api.request(ApiRoutes.currencies()).then((data) {
      if (data is Ok) {
        List<Map<String, dynamic>> mapData = List<Map<String, dynamic>>.from(data.value);
        return CurrencySummaryModel.fromList(mapData);
      } else if (data is Error) {
        throw Exception("Failed to fetch currencies: ${data.error}");
      } else {
        throw Exception("Unexpected result type.");
      }
    });
  }

  @override
  Future<CurrencyDetailModel> fetchCurrency({required String currencySymbol}) async {
    return await _api.request(ApiRoutes.currency(currencySymbol: currencySymbol)).then((data) {
      if (data is Ok) {
        inspect(data.value);
        return CurrencyDetailModel.fromJson(data.value);
      } else if (data is Error) {
        throw Exception("Failed to fetch currency: ${data.error}");
      } else {
        throw Exception("Unexpected result type.");
      }
    });
  }
}
