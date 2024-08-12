import 'dart:convert';

import '../../model/my_farmclub_history/my_farmclub_certification_model.dart';
import 'base_api_services.dart';

class MyFarmclubHistoryService {
  final ApiClient apiClient;

  MyFarmclubHistoryService({ApiClient? apiClient})
      : apiClient = apiClient ?? ApiClient();

  Future<String> myFarmclubHistory() async {
    const url = '/api/history/farm-club';
    return _fetchData(url, '내 팜클럽 불러오기 실패');
  }

  Future<String> _fetchData(String url, String errorMessage) async {
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
