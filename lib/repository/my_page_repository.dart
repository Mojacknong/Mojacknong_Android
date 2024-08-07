import 'package:farmus/data/network/my_page_services.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';

class MyPageRepository {

  static Future<String> changeUserProfile(
      OnBoardingUserProfileModel profile) async {
    String response = await MyPageServices()
        .changeUserProfile(profile.file, profile.nickName);
    return response;
  }

  static Future<String> myInfo() async {
    String response = await MyPageServices().myInfo();
    return response;
  }
}
