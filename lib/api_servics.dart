// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_generator/api_key.dart';

class Api {
  static final url = Uri.parse("https://cloud.leonardo.ai/api/rest/v1/me");

  static final headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer $apiKey"
  };

  static generateImage(String text, String size) async {
    var res = await http.post(
      url,
      headers: headers,
      body: jsonEncode(
        {"prompt": "", "n": 1, "size": size},
      ),
    );

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body.toString());
      return data['data'][0]['url'];
    } else {
      print("Failed to fetch image");
    }
  }
}
