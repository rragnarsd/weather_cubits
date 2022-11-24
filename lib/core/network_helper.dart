import 'dart:convert';
import 'package:http/http.dart' as http;

enum HttpMethod { post, get, put, delete }

class NetworkHelper {
  Map<String, String> headers = {'content-type': 'application/json'};

  static const baseUrl = 'http://api.weatherapi.com/v1';

  Future<dynamic> sendRequest(
      {HttpMethod type = HttpMethod.get,
      required String path,
      dynamic body}) async {
    try {
      Uri url = Uri.parse(baseUrl + path);

      dynamic response;
      switch (type) {
        case HttpMethod.get:
          response = await http.get(url, headers: headers);
          break;
        case HttpMethod.post:
          response = await http.post(url, body: body, headers: headers);
          break;
        case HttpMethod.put:
          response = await http.put(url, body: body, headers: headers);
          break;
        case HttpMethod.delete:
          response = await http.delete(url, body: body, headers: headers);
          break;
        default:
      }

      switch (response.statusCode) {
        case 200:
          return jsonDecode(response.body);
        default:
          throw Exception(
              "Request failed with status: ${response.statusCode}.");
      }
    } on Exception {
      rethrow;
    }
  }
}
