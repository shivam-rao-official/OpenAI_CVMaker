import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../apiSecret.dart';

Future<dynamic> generateCV(
  String? email,
  String? fullName,
  String? phone,
  String? address,
  String? summary,
) async {
  const String openAISecretKey = API_SECRET;

  final Uri baseUrl = Uri.parse("https://api.openai.com/v1/completions");

  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $openAISecretKey'
  };

  final body = {
    'model': "text-davinci-003",
    'prompt':
        'Generate a cv based on the details my full name: $fullName email: $email phone: $phone address: $address and $summary',
    'max_tokens': 4000,
    "temperature": 1.2,
    'n': 1,
  };

  try {
    var response =
        await http.post(baseUrl, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      return resp['choices'][0]['text'].toString();
    } else {
      return "Error occured ${response.statusCode}";
    }
  } catch (e) {
    throw Exception(e);
  }
}
