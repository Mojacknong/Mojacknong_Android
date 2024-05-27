import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../../model/farmus_user.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

class LoginApiServices {
  Future<FarmusUser?> getGoogleLogin(token) async {
    try {
      FarmusUser farmusUser = FarmusUser(refreshToken: '', accessToken: '');

      var url = Uri.https(
        '${dotenv.env['APP_URL']}',
        '/api/auth/google-login',
      );

      var response = await http.post(
        url,
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
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
        '${dotenv.env['APP_URL']}',
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
        return farmusUser;
      }
    } catch (error) {
      return null;
    }
    return null;
  }
}
