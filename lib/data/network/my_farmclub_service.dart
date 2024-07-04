import 'dart:convert';
import 'dart:io';

import '../../model/mission/mission_write_model.dart';
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

  Future<String> farmclubMissionFeed(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/mission';
    return _fetchData(url, '팜클럽 미션 불러오기 실패');
  }

  Future<String> farmclubMissionCertification(
      MissionWriteModel mission, int farmclubId, int stepNum) async {
    const url = '/api/farm-club/mission';
    ApiClient apiClient = ApiClient();
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'userFarmClubId': farmclubId,
      'content': mission.content,
      'stepNum': stepNum
    });
    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 인증 실패');
    }
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
