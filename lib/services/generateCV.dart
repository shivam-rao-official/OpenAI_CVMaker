import 'dart:convert';

import 'package:http/http.dart' as Http;

generateCV(String myCVString) async {
  const String OPENAI_API_KEY =
      "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";

  final Uri baseUrl = Uri.parse("https://api.openai.com/v1/completions");

  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $OPENAI_API_KEY'
  };

  final body = {
    'model': "text-davinci-003",
    'prompt': 'Generate my CV using $myCVString',
    'max_tokens': 1024,
    "temperature": 0.4,
    'n': 1,
    'stop': ['\n\n']
  };
  try {
    var response =
    await Http.post(baseUrl, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print("Error occurred ${response.statusCode}");
    }
  }catch(e){
    throw Exception(e);
  }
}
