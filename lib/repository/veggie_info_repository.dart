import 'package:farmus/data/network/veggie_info_service.dart';

class VeggieInfoRepository {
  static Future<String> recommendVeggieInfo() async {
    String? response = await VeggieInfoService().recommendVeggieInfo();
    return response;
  }

  static Future<String> veggieInfo() async {
    String? response = await VeggieInfoService().veggieInfo();
    return response;
  }
}
