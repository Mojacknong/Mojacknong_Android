import 'package:farmus/data/network/my_farmclub_service.dart';

class MyFarmclubRepository {
  static Future<String> myFarmclub() async {
    String? response = await MyFarmclubService().myFarmclub();
    return response;
  }

  static Future<String> myFarmclubInfo(int farmclubId) async {
    String? response = await MyFarmclubService().myFarmclubInfo(farmclubId);
    return response;
  }

  static Future<String> farmclubHelp(int farmclubId) async {
    String? response = await MyFarmclubService().farmclubHelp(farmclubId);
    return response;
  }
}
