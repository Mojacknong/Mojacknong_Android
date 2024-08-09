import 'package:farmus/data/network/veggie_history_services.dart';
import 'package:farmus/model/veggie_history/veggie_history_list_model.dart';

class VeggieHistoryRepository {
  Future<VeggieHistoryListModel> getVeggieHistory() async {
    VeggieHistoryListModel response =
    await VeggieHistoryServices().getVeggieHistory();
    return response;
  }
}
