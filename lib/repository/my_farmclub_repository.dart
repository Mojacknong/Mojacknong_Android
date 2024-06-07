import 'package:farmus/data/network/my_farmclub_service.dart';

class MyFarmclubRepository {
  static Future<String> myFarmclub() async {
    String? response = await MyFarmclubService().myFarmclub();
    return response;
  }
}
