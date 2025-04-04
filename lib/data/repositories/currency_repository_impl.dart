import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/core/http/http_routes.dart';
import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/data/models/currency_model.dart';
import 'package:flutter_ddd/domain/repositories/curency_repository.dart';
import 'package:flutter_ddd/utils/result/result.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyRepositoryImpl implements ICurrencyRepository {
  final HttpClient _api = Modular.get();

  @override
  Future<List<CurrenciesModel>> fetchCurrencies() async {
    return await _api.request(ApiRoutes.currencies()).then((data) {
      if (data is Ok) {
        List<Map<String, dynamic>> mapData = List<Map<String, dynamic>>.from(data.value);
        return CurrenciesModel.fromList(mapData);
      } else if (data is Error) {
        throw Exception("Failed to fetch currencies: ${data.error}");
      } else {
        throw Exception("Unexpected result type.");
      }
    });
  }

  @override
  Future<CurrencyModel> fetchCurrency() async {
    return await _api.request(ApiRoutes.currencies()).then((data) => CurrencyModel.fromJson(data.asOk.value));
  }
}
