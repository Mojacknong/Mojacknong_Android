import 'dart:convert';

import 'package:farmus/data/network/base_api_services.dart';

import '../../model/veggie_history/veggie_history_list_model.dart';

class VeggieHistoryServices {
  Future<VeggieHistoryListModel> getVeggieHistory() async {
    ApiClient apiClient = ApiClient();
    const url = '/api/history/veggie';
    final response = await apiClient.get(url.toString());
    print(utf8.decode(response.bodyBytes));

    if (response.statusCode == 200) {
      return VeggieHistoryListModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch my veggie data');
    }
  }
}
