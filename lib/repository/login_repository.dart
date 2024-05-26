

import '../data/network/login_api_service.dart';
import '../model/farmus_user.dart';

class SignInRepository {
  static Future<FarmusUser?> googleSignInApi(token) async {
    FarmusUser? response = await LoginApiServices().getGoogleLogin(token);
    return response;
  }

  static kakaoLoginApi(token) {}
}
