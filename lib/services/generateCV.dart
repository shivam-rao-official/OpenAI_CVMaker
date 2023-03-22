import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> generateCV(String myCVString) async {
  const String OPENAI_API_KEY =
      "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";

  final Uri baseUrl = Uri.parse("https://api.openai.com/v1/completions");

  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $OPENAI_API_KEY'
  };

  final body = {
    'model': "text-davinci-003",
    'prompt': 'Generate a cv based in the details $myCVString',
    'max_tokens': 4000,
    "temperature": 1.2,
    'n': 1,
  };

  try {
    var response =
        await http.post(baseUrl, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print(resp['choices'][0]['text'].toString());
      return resp['choices'][0]['text'].toString();
    } else {
      return "Error occured ${response.statusCode}";
    }
  } catch (e) {
    throw Exception(e);
  }
}
