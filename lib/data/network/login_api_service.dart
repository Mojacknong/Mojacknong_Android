import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../../model/farmus_user.dart';
import '../../res/app_url/app_url.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

class LoginApiServices {
  Future<FarmusUser?> getGoogleLogin(token) async {
    try {
      FarmusUser farmusUser = FarmusUser(refreshToken: '', accessToken: '');

      var url = Uri.https(
        AppUrl.appUrl,
        '/api/auth/google-login',
      );

      var response = await http.post(
        url,
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        await storage.write(key: "accessToken", value: farmusUser.accessToken);
        await storage.write(
            key: "refreshToken", value: farmusUser.refreshToken);
        farmusUser.early = jsonResponse['data']['early'];
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
        return farmusUser;
      }
    } catch (error) {
      return null;
    }
    return null;
  }
}
