import '../data/network/sign_in_api_service.dart';
import '../model/farmus_user.dart';

class SignInRepository {
  static Future<FarmusUser?> googleSignInApi(token) async {
    FarmusUser? response = await SignInApiServices().getGoogleLogin(token);
    return response;
  }

  static Future<FarmusUser?> kakaoSignInApi(token) async {
    FarmusUser? response = await SignInApiServices().getKakaoLogin(token);
    return response;
  }
}
