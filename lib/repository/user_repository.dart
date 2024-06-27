import 'package:farmus/data/network/on_boarding_service.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';

import '../data/network/sign_in_api_service.dart';
import '../model/farmus_user.dart';

class UserRepository {
  static Future<FarmusUser?> googleSignInApi(token) async {
    FarmusUser? response = await SignInApiServices().getGoogleLogin(token);
    return response;
  }

  static Future<FarmusUser?> kakaoSignInApi(token) async {
    FarmusUser? response = await SignInApiServices().getKakaoLogin(token);
    return response;
  }

  static Future<String> postUserProfile(
      OnBoardingUserProfileModel profile) async {
    String response = await OnBoardingService()
        .postUserProfile(profile.file, profile.nickName);
    return response;
  }

  static Future<String> postMotivation(List<String> motivation) async {
    String? response = await OnBoardingService().postMotivation(motivation);
    return response;
  }

  static Future<String> postLevel(int time, String skill) async {
    String? response = await OnBoardingService().postLevel(time, skill);
    return response;
  }

  static Future<String> onBoardingComplete() async {
    String? response = await OnBoardingService().onBoardingComplete();
    return response;
  }

  static Future<String> userInfo() async {
    String response = await OnBoardingService().userInfo();
    print('userInfo response: $response');
    return response;
  }
}
