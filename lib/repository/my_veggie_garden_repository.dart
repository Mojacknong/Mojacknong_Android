import 'package:farmus/data/network/my_veggie_service.dart';

class MyVeggieGardenRepository {
  static Future<String> myVeggieList() async {
    String? response = await MyVeggieService().myVeggieList();
    return response;
  }

  static Future<String> myVeggieAdd(
    String nickname,
    String birth,
    String veggieInfoId,
  ) async {
    String response =
        await MyVeggieService().myVeggieAdd(nickname, birth, veggieInfoId);
    return response;
  }

  static Future<String> myVeggieProfileList(String myVeggieId) async {
    String? response = await MyVeggieService().myVeggieProfileList(myVeggieId);
    return response;
  }

  static Future<String> myVeggieDiaryOne(String myVeggieId) async {
    String? response = await MyVeggieService().myVeggieDiaryOne(myVeggieId);

    return response;
  }

  static Future<String> myVeggieInfoList() async {
    String? response = await MyVeggieService().myVeggieInfoList();
    return response;
  }
}
