import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class OnBoardingService {
  Future<http.Response> postUserProfile() async {
    String? accessToken = await storage.read(key: "accessToken");
    final url = '/api/user/profile';

    Map<String, String> headers = {};
    if (accessToken != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $accessToken';
    }

    ApiClient apiClient = ApiClient();


    return await apiClient.post(url, headers: headers);
  }
}
