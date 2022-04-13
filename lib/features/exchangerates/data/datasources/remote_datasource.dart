import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';

const API_URL = 'https://api.exchangerate.host/latest';

abstract class ExchangeratesRemoteDataSource {
  Future<ExchangeRateModel?> getRates();
}

class ExchangeratesRemoteDataSourceImpl
    implements ExchangeratesRemoteDataSource {
  @override
  Future<ExchangeRateModel?> getRates() async {
    try {
      final url = Uri.parse('$API_URL?base=${'USD'}');
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final rateModel =
            ExchangeRateModel.fromJson(jsonResponse as Map<String, dynamic>);
        return Future<ExchangeRateModel>.value(rateModel);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
