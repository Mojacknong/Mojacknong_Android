import 'package:farmus/data/network/on_boarding_service.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:http/http.dart' as http;

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

  static Future<http.Response> postUserProfile(
      OnBoardingUserProfileModel profile) async {
    http.Response? response = await OnBoardingService()
        .postUserProfile(profile.file, profile.nickName);
    return response;
  }

  static Future<http.Response> postMotivation(List<String> motivation) async {
    http.Response? response =
        await OnBoardingService().postMotivation(motivation);
    return response;
  }

  static Future<http.Response> postLevel(int time, String skill) async {
    http.Response? response = await OnBoardingService().postLevel(time, skill);
    return response;
  }

  static Future<http.Response> onBoardingComplete() async {
    http.Response? response = await OnBoardingService().onBoardingComplete();
    return response;
  }

  static Future<http.Response> userInfo() async {
    http.Response? response = await OnBoardingService().userInfo();
    return response;
  }
}
