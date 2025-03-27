import 'package:http/http.dart' as http;
import 'dart:convert';

class Request {
  Map<String, dynamic>? content;
  String? endpoint;

  Request(Map<String, dynamic> content, String endpoint) {
    this.content = content;
    this.endpoint = endpoint;
  }

  Future<Request> sendPostRequest() async {
    http.Response response = await http.post(
      // use 10.0.2.2 for android emulator
      Uri.parse('http://10.0.2.2:8000/$endpoint'),
      headers: <String, String> {
      'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(content),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Request(jsonDecode(response.body) as Map<String, dynamic>, endpoint!);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  String getResponseContent(String header) {
    if (this.content!.containsKey(header)) {
      return this.content![header];
    } else {
      throw Exception('Header does not exist in response body');
    }
  }
}