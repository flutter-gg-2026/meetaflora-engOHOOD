import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:meet_a_flora/core/network/api_endpoints.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';

extension GeminiMethod on DioClient {
  Future<String> postRequest(String image) async {
 print("---------------------------------4.3");
  print(image);
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
                "inline_data": {
                  "mime_type": "image/jpg",
                  "data": base64String,
                },
              },
              {
                "text":
                    """You are a professional botanist and plant identification expert.

Analyze the provided image of a plant and return a structured response in the following format:

1. Common Name:
2. Scientific Name (if possible):
3. Plant Type: (tree / flower / herb / shrub / succulent / etc.)
4. Description:
   - Brief physical description of the plant

5. Key Features:
   - List 3–6 visible characteristics

6. Health Status (if visible):
   - Healthy / Unhealthy / Unknown
   - Explain why

7. Possible Uses:
   - Medicinal / decorative / agricultural / other

8. Care Instructions:
   - Watering
   - Light requirement
   - Soil type (if possible)

9. Confidence Level:
   - High / Medium / Low

If the plant cannot be identified clearly, say "Unknown plant" and explain why.

Keep the response clear, structured, and concise.""",
              },
            ],
          },
        ],
      },
    );

    print(response.data);

    return '';
  }
}
