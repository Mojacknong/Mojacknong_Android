import 'dart:convert' as convert;
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../model/farmus_user.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();


class LoginApiServices {

  Future<FarmusUser?> getGoogleLogin(token) async {
    try {
      var url = Uri.http(
        '${dotenv.env['LOGIN_URL']}',
        '/api/auth/login/google',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: token
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
        print(jsonResponse);
        return jsonResponse['new'];
      }
    } catch (error) {
      return null;
    }
  }

}
