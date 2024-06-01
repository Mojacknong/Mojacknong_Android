import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

import '../../model/on_boarding/on_boarding_user_profile_model.dart';

class OnBoardingService {
  Future<http.Response> postUserProfile(
      String filePath, String nickName) async {
    String base64Image = '';

    const url = '/api/user/profile';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'multipart/form-data',
    };
    List<int> bytes = File(filePath).readAsBytesSync();
    base64Image = base64Encode(bytes);

    final body = jsonEncode({
      'file': '08bed43e-9242-4773-9439-884891704d58/1000000024.png',
      'nickName': nickName,
    });

    ApiClient apiClient = ApiClient();

    final response = await apiClient.post(
      url,
      headers: headers,
      body: body,
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
