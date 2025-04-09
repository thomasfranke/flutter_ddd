import 'package:flutter_ddd/core/http/http_client.dart';
import 'package:flutter_ddd/core/http/http_routes.dart';
import 'package:flutter_ddd/app/data/models/quote_summary_model.dart';
import 'package:flutter_ddd/app/data/models/quote_detail_model.dart';
import 'package:flutter_ddd/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_ddd/utils/result/result.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuotesRepositoryImpl implements IQuotesRepository {
  final HttpClient _api = Modular.get();

  @override
  Future<List<QuoteSummaryModel>> fetchQuotes() async {
    return await _api.request(ApiRoutes.quotes()).then((data) {
      if (data is Ok) {
        List<Map<String, dynamic>> mapData = List<Map<String, dynamic>>.from(data.value);

        return QuoteSummaryModel.fromList(mapData).take(10).toList();
      } else if (data is Error) {
        throw Exception("Failed to fetch currencies: ${data.error}");
      } else {
        throw Exception("Unexpected result type.");
      }
    });
  }

  @override
  Future<QuoteDetailModel> fetchQuote({required String symbol}) async {
    return await _api.request(ApiRoutes.quote(symbol: symbol)).then((data) {
      if (data is Ok) {
        return QuoteDetailModel.fromJson(data.value);
      } else if (data is Error) {
        throw Exception("Failed to fetch currency: ${data.error}");
      } else {
        throw Exception("Unexpected result type.");
      }
    });
  }
}
