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

  Future<http.Response> get(String endpoint) async {
    String? accessToken = await storage.read(key: "accessToken");
    Map<String, String> headers = {};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    final url = Uri.parse('$baseUrl$endpoint');
    return await client.get(url, headers: headers);
  }

  Future<http.Response> post(String endpoint, {Map<String, String>? headers, Object? body}) async {
    String? accessToken = await storage.read(key: "accessToken");
    headers ??= {};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    final url = Uri.parse('$baseUrl$endpoint');
    return await client.post(url, headers: headers, body: body);
  }
}
