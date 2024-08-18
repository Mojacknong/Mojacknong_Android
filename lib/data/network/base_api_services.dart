import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';
import '../../repository/user_repository.dart';
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
          request.headers.addAll(headers);

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

    if (response.statusCode == 419) {
      final refreshToken = await storage.read(key: 'refreshToken');
      if (refreshToken != null) {
        try {
          String newAccessToken = await _getNewAccessToken(refreshToken);
          headers['Authorization'] = 'Bearer $newAccessToken';

          return await _retryRequest(
              method, url, headers, body, file, fileFieldName);
        } catch (e) {
          await _handleTokenExpiry();
          throw Exception('Failed to refresh token and retry request');
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

  Future<String> _getNewAccessToken(String refreshToken) async {
    try {
      return await UserRepository.reissueToken();
    } catch (e) {
      throw Exception('Failed to request new access token');
    }
  }

  Future<http.Response> _retryRequest(
    String method,
    Uri url,
    Map<String, String>? headers,
    Object? body,
    File? file,
    String fileFieldName,
  ) async {
    switch (method) {
      case 'GET':
        return await client.get(url, headers: headers);
      case 'POST':
        return await client.post(url, headers: headers, body: body);
      case 'PATCH':
        return await client.patch(url, headers: headers, body: body);
      case 'PUT':
        return await client.put(url, headers: headers, body: body);
      case 'DELETE':
        return await client.delete(url, headers: headers, body: body);
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
        return await http.Response.fromStream(await request.send());
      default:
        throw Exception('Unsupported HTTP method: $method');
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
