import 'dart:convert';
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
        request.headers.addAll(headers);

        if (body is String) {
          request.fields['myVeggieDiaryInsert'] = body;
        } else if (body is Map<String, dynamic>) {
          request.fields['myVeggieDiaryInsert'] = jsonEncode(body);
        }

        if (file != null) {
          try {
            request.files.add(
              await http.MultipartFile.fromPath(
                fileFieldName,
                file.path,
                contentType: MediaType('image', 'jpeg'),
              ),
            );
          } catch (e) {
            throw Exception('파일 추가 오류: $e');
          }
        }

        final streamedResponse = await request.send();
        response = await http.Response.fromStream(streamedResponse);
        break;
      default:
        throw Exception('지원되지 않는 HTTP 메서드: $method');
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    } else {
      throw Exception(
          '$method 요청을 $endpoint에 수행 실패: ${response.statusCode} ${response.body}');
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
