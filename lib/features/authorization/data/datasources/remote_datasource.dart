import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:budget_nerd/core/error/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

abstract class RemoteDataSource {
  Future<UserModel> authByGoogle(String idToken);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<UserModel> authByGoogle(String idToken) async {
    try {
      final url = Uri.parse(
          '${dotenv.env['API_V1_ENDPOINT']}/auth/google?id_token=$idToken');
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return UserModel.fromJson(jsonResponse as Map<String, dynamic>);
      } else {
        final code = response.statusCode.toString();
        await Sentry.captureException(
            ServerException('$code // ${response.reasonPhrase}'));
        throw ServerException(code);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
