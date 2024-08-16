import 'dart:convert';
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

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
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    return headers;
  }

  Future<http.Response> _sendRequest(String method, String endpoint,
      {Map<String, String>? headers,
      Object? body,
      File? file,
      String fileFieldName = 'file'}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final tokenHeaders = await _getHeaders();

    headers = headers == null ? tokenHeaders : {...headers, ...tokenHeaders};

    http.Response response;
    switch (method) {
      case 'GET':
        response = await client.get(url, headers: headers);
        break;
      case 'POST':
        response = await client.post(url, headers: headers, body: body);
        break;
      case 'PATCH':
        response = await client.patch(url, headers: headers, body: body);
        break;
      case 'PUT':
        response = await client.put(url, headers: headers, body: body);
        break;
      case 'DELETE':
        response = await client.delete(url, headers: headers, body: body);
        break;
      case 'POST_MULTIPART':
        var request = http.MultipartRequest('POST', url);
        request.headers.addAll({
          ...headers,
          HttpHeaders.contentTypeHeader: 'application/json',
        });

        if (body is Map<String, dynamic>) {
          request.fields['json'] = jsonEncode(body);
        }

        if (file != null) {
          try {
            request.files.add(
              await http.MultipartFile.fromPath(
                fileFieldName,
                file.path,
              ),
            );
          } catch (e) {
            throw Exception('Error adding file: $e');
          }
        }

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

  Future<http.Response> postMultipart(String endpoint, String stringFieldName,
      String fileFieldName, String text, File file) async {
    Map<String, String> body = {
      stringFieldName: text,
    };

    return _sendRequest('POST_MULTIPART', endpoint,
        body: body, file: file, fileFieldName: fileFieldName);
  }

  Future<http.Response> patch(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('PATCH', endpoint, headers: headers, body: body);
  }

  Future<http.Response> put(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('PUT', endpoint, headers: headers, body: body);
  }

  Future<http.Response> delete(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('DELETE', endpoint, headers: headers, body: body);
  }
}
