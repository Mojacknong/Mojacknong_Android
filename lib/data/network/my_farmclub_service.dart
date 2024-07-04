import 'dart:convert';

import 'base_api_services.dart';

class MyFarmclubService {
  final ApiClient apiClient;

  MyFarmclubService({ApiClient? apiClient})
      : apiClient = apiClient ?? ApiClient();

  Future<String> myFarmclub() async {
    const url = '/api/farm-club/me';
    return _fetchData('get', url, '내 팜클럽 불러오기 실패');
  }

  Future<String> myFarmclubInfo(int farmclubId) async {
    final url = '/api/farm-club/me/$farmclubId';
    return _fetchData('get', url, '내 팜클럽 정보 불러오기 실패');
  }

  Future<String> farmclubHelp(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/help';
    return _fetchData('get', url, '내 팜클럽 도움말 불러오기 실패');
  }

  Future<String> farmclubMissionFeed(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/mission';
    return _fetchData('get', url, '팜클럽 미션 불러오기 실패');
  }

  Future<String> farmclubMissionCertification() async {
    const url = '/api/farm-club/mission';
    return _fetchData('post', url, '팜클럽 미션 인증 실패');
  }

  Future<String> _fetchData(
      String method, String url, String errorMessage) async {
    final response;

    switch (method) {
      case 'get':
        response = await apiClient.get(url);
        break;
      case 'post':
        response = await apiClient.post(url);
        break;
      default:
        throw Exception('Unsupported HTTP method: $method');
    }

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }
}
