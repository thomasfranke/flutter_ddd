import 'package:flutter_ddd/core/http/http_methods.dart';

class HttpUrlMethod {
  String baseUrl;
  String path;
  HttpMethod httpMethod;
  dynamic body;

  HttpUrlMethod({
    required this.baseUrl,
    this.path = '',
    required this.httpMethod,
    this.body,
  });

  String get url => "$baseUrl$path";

  @override
  String toString() => url;
}
