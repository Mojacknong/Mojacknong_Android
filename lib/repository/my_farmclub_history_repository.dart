import 'package:farmus/data/network/my_farmclub_service.dart';

import '../data/network/my_farmclub_history_service.dart';
import '../data/network/my_history_service.dart';
import '../model/my_farmclub_history/my_farmclub_certification_model.dart';


class MyFarmclubHistoryRepository {
  static Future<String> myFarmclubHistory() async {
    String? response = await MyFarmclubHistoryService().myFarmclubHistory();
    return response;
  }

  Future<MyFarmclubCertificationModel> certificationDetail(String id) async {
    MyFarmclubCertificationModel response =
    await MyFarmclubHistoryService().getMyFarmclubCertification(id);
    return response;
  }
}
