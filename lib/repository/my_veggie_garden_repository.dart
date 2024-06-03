import 'package:farmus/data/network/my_veggie_service.dart';

class MyVeggieGardenRepository {
  static Future<String> myVeggieList() async {
    String? response = await MyVeggieService().myVeggieList();
    return response;
  }

  static Future<String> recommendVeggieInfo() async {
    String? response = await MyVeggieService().recommendVeggieInfo();
    return response;
  }
}
