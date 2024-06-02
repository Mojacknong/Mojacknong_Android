import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;

import '../../res/app_url/app_url.dart';

const storage = FlutterSecureStorage();

class ApiClient {
  final String baseUrl = 'https://${AppUrl.appUrl}';
  late http.Client client;

  ApiClient() {
    client = http.Client();
  }

  Future<http.Response> get(String endpoint) async {
    String? accessToken = await storage.read(key: "accessToken");
    Map<String, String> headers = {};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    final url = Uri.parse('$baseUrl$endpoint');
    return await client.get(url, headers: headers);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, String>? headers, Object? body}) async {
    String? accessToken = await storage.read(key: "accessToken");
    headers ??= {};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    final url = Uri.parse('$baseUrl$endpoint');
    return await client.post(url, headers: headers, body: body);
  }

  Future<http.Response> postMultipart(
      String endpoint, String nickname, File file) async {
    String? accessToken = await storage.read(key: "accessToken");
    final url = Uri.parse('$baseUrl$endpoint');

    var request = http.MultipartRequest('POST', url);

    if (accessToken != null) {
      request.headers[HttpHeaders.authorizationHeader] = 'Bearer $accessToken';
    }

    final mimeTypeData = lookupMimeType(file.path)?.split('/') ??
        ['application', 'octet-stream'];
    if (mimeTypeData[0] == 'application' && mimeTypeData[1] == 'octet-stream') {
      return http.Response('Unsupported file type', 400);
    }

    request.headers['Content-Type'] = 'application/json';

    request.fields['nickname'] = nickname;

    request.files.add(
      http.MultipartFile(
        'file',
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: path.basename(file.path),
        contentType: MediaType('multipart', 'form-data'),
      ),
    );

    var response = await request.send();
    return await http.Response.fromStream(response);
  }
}
