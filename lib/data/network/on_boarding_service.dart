import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

import '../../model/on_boarding/on_boarding_user_profile_model.dart';

class OnBoardingService {
  Future<http.Response> postUserProfile(
      OnBoardingUserProfileModel profile) async {
    String? accessToken = await storage.read(key: "accessToken");
    String base64Image = '';

    const url = '/api/user/profile';

    Map<String, String> headers = {};
    if (accessToken != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $accessToken';
    }

    if (profile.file != null) {
      List<int> bytes = File(profile.file!).readAsBytesSync();
      base64Image = base64Encode(bytes);
    }

    final body = jsonEncode({
      'file': profile.file,
      'nickName': profile.nickName,
    });

    ApiClient apiClient = ApiClient();

    return await apiClient.post(
      url,
      headers: headers,
      body: body,
    );
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

    final body = jsonEncode(motivation);
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
