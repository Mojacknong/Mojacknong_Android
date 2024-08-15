import '../data/network/my_history_service.dart';
import '../model/my_farmclub_history/my_farmclub_certification_model.dart';
import '../model/my_farmclub_history/user_farmclub_history_model.dart';

class MyHistoryRepository {

  static Future<UserFarmclubHistoryModel> getMyFarmclubHistory() async {
    final userFarmclubHistory = await MyHistoryService().getMyFarmclubHistory();
    return userFarmclubHistory;
  }
  static Future<String> myFarmclubHistory() async {
    String? response = await MyHistoryService().myFarmclubHistory();
    return response;
  }

  static Future<MyFarmclubCertificationModel> certificationDetail(String id) async {
    MyFarmclubCertificationModel response =
    await MyHistoryService().getMyFarmclubCertification(id);
    return response;
  }
}
