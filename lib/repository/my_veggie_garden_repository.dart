import 'package:farmus/data/network/my_veggie_service.dart';

class MyVeggieGardenRepository {
  static Future<String> myVeggieList() async {
    String? response = await MyVeggieService().myVeggieList();
    print(response);
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
}
