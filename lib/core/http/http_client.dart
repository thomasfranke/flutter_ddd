import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_ddd/core/http/http_urls.dart';
import 'package:flutter_ddd/utils/result/result.dart';

class HttpClient {
  final Dio _http = Dio();

  Future request(HttpUrlMethod api, {data, query, cache = false}) async {
    log("• Request: ${api.httpMethod.name} | ${api.url}");

    Options requestOptions = Options(method: api.httpMethod.name);

    try {
      Response response = await _http.request(api.url, data: data, options: requestOptions, queryParameters: query);
      return Result.ok(response.data);
    } on DioException catch (error) {
      return Result.error(error);
    } catch (error) {
      return Result.error(Exception(error));
    }

    /// result_dart
    // try {
    //   final response = await _http.request(api.url, data: data, queryParameters: query, options: requestOptions);
    //   return Success(response.data);
    // } on DioException catch (error) {
    //   return Failure(error);
    // } catch (error) {
    //   return Failure(Exception(error.toString()));
    // }
  }
}
