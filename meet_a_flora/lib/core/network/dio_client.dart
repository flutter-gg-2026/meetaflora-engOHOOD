import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'api_endpoints.dart';

@lazySingleton
class DioClient {
  late final Dio _aiDio;
  late final Dio _photoDio;
  DioClient() {
    _aiDio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.AiBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'X-goog-api-key': dotenv.env['Gemini_API_Key'],
        },
      ),
    );
    _photoDio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.PhotoBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': dotenv.env['Pexels_API_Key'],
        },
      ),
    );
  }

  Dio get dio => _aiDio;
}
