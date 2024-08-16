import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../../model/farmus_user.dart';
import '../../res/app_url/app_url.dart';
import 'base_api_services.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

class SignInApiServices {
  final ApiClient apiClient = ApiClient();

  Future<FarmusUser?> getGoogleLogin(token) async {
    try {
      FarmusUser farmusUser = FarmusUser(refreshToken: '', accessToken: '');

      var url = Uri.https(
        AppUrl.appUrl,
        '/api/auth/google-login',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer $token'
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        farmusUser.accessToken = jsonResponse['data']['accessToken'];
        farmusUser.refreshToken = jsonResponse['data']['refreshToken'];
        farmusUser.early = jsonResponse['data']['early'];
        await storage.write(key: "accessToken", value: farmusUser.accessToken);
        await storage.write(
            key: "refreshToken", value: farmusUser.refreshToken);
        await storage.write(key: "early", value: farmusUser.early.toString());
        return farmusUser;
      }
    } catch (error) {
      return null;
    }
    return null;
  }

  Future<FarmusUser?> getKakaoLogin(token) async {
    try {
      FarmusUser farmusUser = FarmusUser(refreshToken: '', accessToken: '');
      var url = Uri.https(
        AppUrl.appUrl,
        '/api/auth/kakao-login',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer $token'
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        farmusUser.accessToken = jsonResponse['data']['accessToken'];
        farmusUser.refreshToken = jsonResponse['data']['refreshToken'];
        farmusUser.early = jsonResponse['data']['early'];
        await storage.write(key: "accessToken", value: farmusUser.accessToken);
        await storage.write(
            key: "refreshToken", value: farmusUser.refreshToken);
        await storage.write(key: "early", value: farmusUser.early.toString());
        return farmusUser;
      }
    } catch (error) {
      return null;
    }
    return null;
  }

  Future<String> logout() async {
    const url = '/api/auth/logout';

    final response = await apiClient.delete(url);

    if (response.statusCode == 200) {
      await storage.delete(key: "accessToken");
      await storage.delete(key: "refreshToken");
      await storage.delete(key: "early");

      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('로그아웃 실패');
    }
  }

}
