import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class OnBoardingService {
  Future<http.Response> postUserProfile(
      File file, Map<String, dynamic> requestDto) async {
    String? accessToken = await storage.read(key: "accessToken");
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.postMultipart(
      url,
      {
        'requestDto': jsonEncode(requestDto),
      },
      file,
    );


    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to post profile');
    }
  }

  Future<http.Response> postMotivation(List<String> motivation) async {
    String? accessToken = await storage.read(key: "accessToken");
    const url = '/api/user/on-boarding/motivation';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    if (accessToken != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $accessToken';
    }

    final body = jsonEncode({'motivation': motivation});
    ApiClient apiClient = ApiClient();

    final response = await apiClient.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to post motivation');
    }
  }
}
