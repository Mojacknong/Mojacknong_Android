import 'dart:convert';

import 'base_api_services.dart';

class MyFarmclubService {
  final ApiClient apiClient;

  MyFarmclubService({ApiClient? apiClient})
      : apiClient = apiClient ?? ApiClient();

  Future<String> myFarmclub() async {
    const url = '/api/farm-club/me';
    return _fetchData(url, '내 팜클럽 불러오기 실패');
  }

  Future<String> myFarmclubInfo(int farmclubId) async {
    final url = '/api/farm-club/me/$farmclubId';
    return _fetchData(url, '내 팜클럽 정보 불러오기 실패');
  }

  Future<String> farmclubHelp(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/help';
    return _fetchData(url, '내 팜클럽 도움말 불러오기 실패');
  }

  Future<String> _fetchData(String url, String errorMessage) async {
    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }
}
