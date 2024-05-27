import '../data/network/login_api_service.dart';
import '../model/farmus_user.dart';

class SignInRepository {
  static Future<FarmusUser?> googleSignInApi(token) async {
    FarmusUser? response = await LoginApiServices().getGoogleLogin(token);
    return response;
  }

  static Future<FarmusUser?> kakaoSignInApi(token) async {
    FarmusUser? response = await LoginApiServices().getKakaoLogin(token);
    return response;
  }
}
