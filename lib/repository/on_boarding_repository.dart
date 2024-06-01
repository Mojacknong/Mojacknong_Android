import 'package:farmus/data/network/on_boarding_service.dart';
import 'package:http/http.dart' as http;

class OnBoardingRepository {
  static Future<http.Response> postUserProfile() async {
    http.Response? response = await OnBoardingService().postUserProfile();
    return response;
  }
}
