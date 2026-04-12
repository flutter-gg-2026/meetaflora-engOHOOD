import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'api_endpoints.dart';

@lazySingleton
class DioClient {
  late final Dio _aiDio;
  DioClient() {
    _aiDio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.aiBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'X-goog-api-key': dotenv.env['Gemini_API_Key'],
        },
      ),
    );
  }

  Dio get aiDio => _aiDio;
}
