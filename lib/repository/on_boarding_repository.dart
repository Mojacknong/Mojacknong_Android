import 'package:farmus/data/network/on_boarding_service.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:http/http.dart' as http;

class OnBoardingRepository {
  static Future<http.Response> postUserProfile(
      OnBoardingUserProfileModel profile) async {
    http.Response? response =
        await OnBoardingService().postUserProfile(profile.file.path, profile.nickName);
    return response;
  }

  static Future<http.Response> postMotivation(List<String> motivation) async {
    http.Response? response =
        await OnBoardingService().postMotivation(motivation);
    return response;
  }
}
