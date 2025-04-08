import 'package:flutter_ddd/core/http/http_methods.dart';
import 'package:flutter_ddd/core/http/http_urls.dart';

class ApiRoutes {
  static const String baseUrl = "https://api.binance.com/api/v3/ticker/price";

  static HttpUrlMethod quote({required String quoteSymbol}) {
    return HttpUrlMethod(baseUrl: baseUrl, path: 'ticker/24hr?symbol=$quoteSymbol', httpMethod: HttpMethod.get);
  }

  static HttpUrlMethod quotes() {
    return HttpUrlMethod(baseUrl: baseUrl, path: 'ticker/price', httpMethod: HttpMethod.get);
  }
}
