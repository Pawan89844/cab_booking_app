import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class ApiService {
  Future<http.Response> getRequest(String url) async {
    final parsedUrl = Uri.parse(url);
    return http.get(parsedUrl);
  }

  Future<http.Response> postRequest(String url,
      {Object? body, Encoding? encoding, Map<String, String>? headers}) async {
    final parsedUrl = Uri.parse(url);
    return http.post(parsedUrl,
        body: body, encoding: encoding, headers: headers);
  }
}

class RequestApi implements ApiService {
  @override
  Future<http.Response> getRequest(String url) async {
    final parsedUrl = Uri.parse(url);
    http.Response req = await http.get(parsedUrl);
    return req;
  }

  @override
  Future<http.Response> postRequest(String url,
      {Object? body, Encoding? encoding, Map<String, String>? headers}) async {
    final parsedUrl = Uri.parse(url);
    http.Response req = await http.post(parsedUrl,
        body: body, encoding: encoding, headers: headers);
    return req;
  }
}
