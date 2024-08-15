import 'package:farmus/data/network/my_page_services.dart';
import 'package:farmus/model/my_page/my_page_nickename_model.dart';

import '../model/my_page/my_page_profile_model.dart';

class MyPageRepository {

  static Future<String> changeMyProfile(MyPageProfileModel profile) async {
    if (profile.image == null) {
      return await MyPageServices().postNickname(profile.nickname);
    }
    return await MyPageServices().changeMyProfile(profile.image!, profile.nickname!);
  }


  static Future<String> myInfo() async {
    String response = await MyPageServices().myInfo();
    return response;
  }

  static Future<String> changeMyNickname(MyPageNickenameModel nickname) async {
    return await MyPageServices().postNickname(nickname.nickname);

  }
}
