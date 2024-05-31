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
      final bytes = File(profile.file!).readAsBytesSync();
      base64Image = base64Encode(bytes);
    }

    ApiClient apiClient = ApiClient();

    return await apiClient.post(url,
        headers: headers,
        body: jsonEncode({
          'file': base64Image,
          'nickName': profile.nickName,
        }));
  }
}
