import 'package:farmus/data/network/my_page_services.dart';

import '../model/my_page/my_page_profile_model.dart';

class MyPageRepository {

  static Future<String> changeMyProfile(
      MyPageProfileModel profile) async {
    String response = await MyPageServices()
        .changeMyProfile(profile.image, profile.nickname);
    return response;
  }

  static Future<String> myInfo() async {
    String response = await MyPageServices().myInfo();
    return response;
  }
}
