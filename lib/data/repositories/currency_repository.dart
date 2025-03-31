import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/core/http/http_routes.dart';
import 'package:flutter_ddd/data/models/currencies_model.dart';
import 'package:flutter_ddd/data/models/currency_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CurrencyRepository{

  final HttpClient _api = Modular.get();
  
  Future<List<CurrenciesModel>> fetchCurrencies() async {
    return await _api
      .authRequest(ApiRoutes.currencies())
      .then((data) => CurrenciesModel.fromList(data));
  }

  Future<CurrencyModel> fetchCurrency() async {
    return await _api
      .authRequest(ApiRoutes.currencies())
      .then((data) => CurrencyModel.fromJson(data));
  }
  
}
