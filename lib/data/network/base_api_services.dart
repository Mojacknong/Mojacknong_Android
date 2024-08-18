import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';
import '../../res/app_url/app_url.dart';
import '../../view/sign_in/sign_in_screen.dart';

const storage = FlutterSecureStorage();

class ApiClient {
  final String baseUrl = 'https://${AppUrl.appUrl}';
  late http.Client client;

  ApiClient() {
    client = http.Client();
  }

  Future<Map<String, String>> _getHeaders() async {
    String? accessToken = await storage.read(key: 'accessToken');
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    if (accessToken != null) {
      headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
    }
    return headers;
  }

  Future<http.Response> _sendRequest(String method, String endpoint,
      {Map<String, String>? headers,
      Object? body,
      File? file,
      String fileFieldName = 'file'}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    headers = headers == null
        ? await _getHeaders()
        : {...headers, ...await _getHeaders()};

    http.Response response;
    try {
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
          request.headers.addAll(headers!);

          if (body is Map<String, dynamic>) {
            body.forEach((key, value) {
              if (value is String) {
                request.fields[key] = value;
              }
            });
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
    } catch (e) {
      throw Exception('Request error: $e');
    }

    final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
    if (jsonResponse['code'] == 419) {
      final refreshToken = await storage.read(key: 'refreshToken');
      if (refreshToken != null) {
        try {
          final newToken = await _reissueToken(refreshToken);
          headers[HttpHeaders.authorizationHeader] = 'Bearer $newToken';
          return await _sendRequest(method, endpoint,
              headers: headers,
              body: body,
              file: file,
              fileFieldName: fileFieldName);
        } catch (e) {
          throw Exception('Failed to reissue token: $e');
        }
      } else {
        await _handleTokenExpiry();
        throw Exception('Unauthorized and no refresh token available');
      }
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    } else {
      throw Exception(
          'Failed to perform $method request to $endpoint: ${response.statusCode} ${response.body}');
    }
  }

  Future<String> _reissueToken(String refreshToken) async {
    const url = '/api/auth/reissue-token';
    final response = await client.get(Uri.parse('$baseUrl$url'),
        headers: {'Authorization': 'Bearer $refreshToken'});

    if (response.statusCode == 200) {
      var jsonResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      await storage.write(
          key: 'accessToken', value: jsonResponse['data']['accessToken']);
      await storage.write(
          key: 'refreshToken', value: jsonResponse['data']['refreshToken']);
      return jsonResponse['data']['accessToken'];
    } else {
      throw Exception('Token reissue failed');
    }
  }

  Future<void> _handleTokenExpiry() async {
    await storage.delete(key: 'accessToken');
    await storage.delete(key: 'refreshToken');
    await storage.delete(key: 'early');

    Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
      (route) => false,
    );
  }

  Future<http.Response> get(String endpoint,
      {Map<String, String>? headers}) async {
    return _sendRequest('GET', endpoint, headers: headers);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    return _sendRequest('POST', endpoint, headers: headers, body: body);
  }

  Future<http.Response> postMultipart(String endpoint, String stringFieldName,
      String fileFieldName, String text, File file,
      {Map<String, String>? headers}) async {
    Map<String, String> body = {
      stringFieldName: text,
    };

    return _sendRequest('POST_MULTIPART', endpoint,
        headers: headers, body: body, file: file, fileFieldName: fileFieldName);
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
