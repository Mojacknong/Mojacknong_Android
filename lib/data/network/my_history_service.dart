import 'dart:convert';

import 'package:farmus/data/network/base_api_services.dart';

import '../../model/my_farmclub_history/my_farmclub_certification_model.dart';
import '../../model/my_farmclub_history/user_farmclub_history_model.dart';

class MyHistoryService {
  Future<UserFarmclubHistoryModel> getMyFarmclubHistory() async {
    ApiClient apiClient = ApiClient();
    const url = '/api/history/icon/farm-club';
    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData =
          jsonDecode(utf8.decode(response.bodyBytes));
      final Map<String, dynamic> data = responseData['data'] ?? {};
      return UserFarmclubHistoryModel.fromJson(data);
    } else {
      throw Exception(
          'Failed to load certification data: ${response.statusCode}');
    }
  }

  Future<String> myFarmclubHistory() async {
    const url = '/api/history/farm-club';
    return _fetchData(url, '내 팜클럽 불러오기 실패');
  }

  Future<String> _fetchData(String url, String errorMessage) async {
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }

  Future<MyFarmclubCertificationModel> getMyFarmclubCertification(
      String detailId) async {
    final String url = '/api/history/farm-club/$detailId';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData =
          jsonDecode(utf8.decode(response.bodyBytes));
      final Map<String, dynamic> data = responseData['data'] ?? {};
      return MyFarmclubCertificationModel.fromJson(data);
    } else {
      throw Exception(
          'Failed to load certification data: ${response.statusCode}');
    }
  }
}
