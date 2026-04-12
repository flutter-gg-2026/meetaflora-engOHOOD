import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:meet_a_flora/core/network/api_endpoints.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';

extension GeminiMethod on DioClient {
  Future<String> postRequest(String image) async {
    
    final byteData = await rootBundle.load(image);
    Uint8List bytes = byteData.buffer.asUint8List();
    String base64String = base64.encode(bytes);
    final response = await aiDio.post(
      ApiEndpoints.generateContent,
      data: {
        "contents": [
          {
            "parts": [
              {
                "inline_data": {"mime_type": "image/jpg", "data": base64String},
              },
              {
                "text": """You are a professional botanist.

Analyze the provided plant image and return ONLY a valid JSON object.

The JSON must follow this exact structure:

{
  "commonName": "",
  "scientificName": "",
  "plantType": "",
  "description": "",
  "keyFeatures": [],
  "healthStatus": "",
  "healthReason": "",
  "possibleUses": [],
  "watering": "",
  "light": "",
  "soil": "",
  "confidence_level": ""
}

Rules:
- Return ONLY JSON (no markdown, no text, no explanation)
- If unknown, use "Unknown"
- key_features and possible_uses must be lists""",
              },
            ],
          },
        ],
      },
    );


    return response.data['candidates'][0]['content']['parts'][0]['text'];
  }


}