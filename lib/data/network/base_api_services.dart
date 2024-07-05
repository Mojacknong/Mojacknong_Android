import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../res/app_url/app_url.dart';

const storage = FlutterSecureStorage();

class ApiClient {
  final String baseUrl = 'https://${AppUrl.appUrl}';
  late http.Client client;

  ApiClient() {
    client = http.Client();
  }

  Future<Map<String, String>> _getHeaders() async {
    String? accessToken = await storage.read(key: "accessToken");
    Map<String, String> headers = {};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    return headers;
  }

  Future<http.Response> _sendRequest(String method, String endpoint,
      {Map<String, String>? headers, Object? body, File? file}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    headers ??= await _getHeaders();

    http.Response response;
    switch (method) {
      case 'GET':
        response = await client.get(url, headers: headers);
        break;
      case 'POST':
        response = await client.post(url, headers: headers, body: body);
        break;
      case 'PATCH':
        response = await client.patch(url, headers: headers);
        break;
      case 'PUT':
        response = await client.put(url, headers: headers, body: body);
        break;
      case 'POST_MULTIPART':
        var request = http.MultipartRequest('POST', url);
        request.headers.addAll(headers);
        request.fields.addAll(body as Map<String, String>);
        request.files.add(await http.MultipartFile.fromPath(
          'file',
          file!.path,
          contentType: MediaType('multipart', 'form-data'),
        ));
        response = await http.Response.fromStream(await request.send());
        break;
      default:
        throw Exception('Unsupported HTTP method: $method');
    }

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to perform $method request to $endpoint');
    }
  }

  Future<http.Response> get(String endpoint) async {
    return _sendRequest('GET', endpoint);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('POST', endpoint, headers: headers, body: body);
  }

  Future<http.Response> postMultipart(
      String endpoint, String nickname, File file) async {
    Map<String, String> body = {'nickname': nickname};
    return _sendRequest('POST_MULTIPART', endpoint, body: body, file: file);
  }

  Future<http.Response> patch(String endpoint,
      {Map<String, String>? headers}) async {
    return _sendRequest('PATCH', endpoint, headers: headers);
  }

  Future<http.Response> put(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('PUT', endpoint, headers: headers, body: body);
  }

  Future<http.Response> postDiary(
    String endpoint,
    File file,
    String content,
    bool isOpen,
    String state,
    int myVeggieId,
  ) async {
    Map<String, String> body = {
      'content': content,
      'isOpen': isOpen.toString(),
      'state': state,
      'myVeggieId': myVeggieId.toString(),
    };
    return _sendRequest('POST_MULTIPART', endpoint, body: body, file: file);
  }
}
