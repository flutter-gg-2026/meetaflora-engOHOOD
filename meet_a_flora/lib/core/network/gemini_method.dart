import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:meet_a_flora/core/network/api_endpoints.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';

extension GeminiMethod on DioClient {
  Future<String> postRequest() async {
    String imagePath = "assets/images/plant.jpeg";

    final byteData = await rootBundle.load(imagePath);

    Uint8List bytes = byteData.buffer.asUint8List();
    String base64String = base64.encode(bytes);

    final response = await aiDio.post(
      ApiEndpoints.generateContent,
      data: {
        "contents": [
          {
            "parts": [
              {
                "inline_data": {
                  "mime_type": "image/jpeg",
                  "data": base64String,
                },
              },
              {"text": "Caption this image."},
            ],
          },
        ],
      },
    );

    print(response.data);

    return '';
  }

  Future<void> getPhoto() async {
    final respons =await photoDio.get(
      ApiEndpoints.searchPhoto,
      queryParameters: {'query': "nature", 'per_page': 1},
    );

    print(respons.data['photos']);
  }
}
