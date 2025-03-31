import 'package:flutter_ddd/core/http/http_methods.dart';
import 'package:flutter_ddd/core/http/http_urls.dart';

class ApiRoutes {
  static const String baseUrl = "https://api.binance.com/api/v3/";

  static HttpUrlMethod currency({required String symbol}) {
    return HttpUrlMethod(baseUrl: baseUrl, path: '/ticker/24hr?symbol=$symbol', httpMethod: HttpMethod.get);
  }

  static HttpUrlMethod currencies() {
    return HttpUrlMethod(baseUrl: baseUrl, path: 'ticker/price', httpMethod: HttpMethod.get);
  }
}
