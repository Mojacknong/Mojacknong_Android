import 'package:farmus/data/network/my_farmclub_service.dart';

import '../data/network/my_farmclub_history_service.dart';


class MyFarmclubHistoryRepository {
  static Future<String> myFarmclubHistory() async {
    String? response = await MyFarmclubHistoryService().myFarmclubHistory();
    return response;
  }

}
