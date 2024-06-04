import 'package:farmus/data/network/my_veggie_service.dart';

class MyVeggieGardenRepository {
  static Future<String> myVeggieList() async {
    String? response = await MyVeggieService().myVeggieList();
    return response;
  }

  static Future<String> myVeggieAdd(String nickname, String birth,
      String veggieInfoId, String veggieName, String veggieImage) async {
    String response = await MyVeggieService()
        .myVeggieAdd(nickname, birth, veggieInfoId, veggieName, veggieImage);
    return response;
  }
}
