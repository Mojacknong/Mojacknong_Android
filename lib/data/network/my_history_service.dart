import 'dart:convert';

import 'package:farmus/data/network/base_api_services.dart';
import '../../model/my_farmclub_history/farmclub_history_icon_model.dart';
import '../../model/my_farmclub_history/user_farmclub_history_model.dart';

class MyHistoryService {
  Future<UserFarmclubHistoryModel> getMyFarmclubHistory() async {
    ApiClient apiClient = ApiClient();
    const url = '/api/history/icon/farm-club';
    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      final responseData = jsonDecode(utf8.decode(response.bodyBytes));

      final Map<String, dynamic> data = responseData['data'];

      final int farmClubHistoryCount = data['farmClubHistoryCount'];

      final List<dynamic> iconsData = data['farmClubHistoryIcons'];

      final List<FarmclubHistoryIconModel> farmClubHistoryIcons = iconsData
          .map<FarmclubHistoryIconModel>((iconData) =>
              FarmclubHistoryIconModel.fromJson(
                  iconData as Map<String, dynamic>))
          .toList();

      return UserFarmclubHistoryModel(
        farmClubHistoryCount: farmClubHistoryCount,
        farmClubHistoryIcons: farmClubHistoryIcons,
      );
    } else {
      throw Exception(
          'Failed to load farmclub history: ${response.statusCode}');
    }
  }
}
