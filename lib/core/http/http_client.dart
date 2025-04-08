import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_ddd/core/http/http_urls.dart';
import 'package:result_dart/result_dart.dart';

class HttpClient {
  final Dio _http = Dio();

  Future request(HttpUrlMethod api, {data, query, cache = false}) async {
    log("• Request: ${api.httpMethod.name} | ${api.url}");

    Options requestOptions = Options(method: api.httpMethod.name);

    try {
      final response = await _http.request(api.url, data: data, queryParameters: query, options: requestOptions);
      return Success(response.data); // retorno de sucesso
    } on DioException catch (error) {
      return Failure(error); // erro tratado pelo Dio
    } catch (error) {
      return Failure(Exception(error.toString())); // erro genérico
    }
  }
}
