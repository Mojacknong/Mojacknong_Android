import 'package:farmus/data/network/my_farmclub_service.dart';

class MyFarmclubRepository {
  static Future<String> myFarmclub() async {
    String? response = await MyFarmclubService().myFarmclub();
    return response;
  }

  static Future<String> myFarmclubInfo(int myVeggieId) async {
    String? response = await MyFarmclubService().myFarmclubInfo(myVeggieId);
    return response;
  }
}
