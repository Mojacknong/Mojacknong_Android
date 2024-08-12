import '../data/network/my_history_service.dart';
import '../model/my_farmclub_history/my_farmclub_certification_model.dart';
import '../model/my_farmclub_history/user_farmclub_history_model.dart';

class MyHistoryRepository {
  final MyHistoryService _myHistoryService = MyHistoryService();

  Future<UserFarmclubHistoryModel> getMyFarmclubHistory() async {
    final userFarmclubHistory = await _myHistoryService.getMyFarmclubHistory();
    return userFarmclubHistory;
  }

}
