import 'dart:convert';

import 'base_api_services.dart';

class RoutineService {
  final ApiClient apiClient = ApiClient();

  Future<String> routineList(String date) async {
    final url = '/api/my-veggie/routine/date/$date';
    return _fetchData(url, '내 채소 루틴 리스트 조회 실패');
  }

  Future<String> myVeggieRoutineInfo(int myVeggieId) async {
    final url = '/api/my-veggie/routine/$myVeggieId';
    return _fetchData(url, '내 채소 루틴 조회 실패');
  }

  Future<String> myVeggieRoutineCheck(int routineId) async {
    const url = '/api/my-veggie/routine/check';

    final body = jsonEncode({
      'routineId': routineId,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소 루틴 체킹 실패');
    }
  }

  Future<String> routineAdd(int myVeggieId, String content, int period) async {
    const url = '/api/my-veggie/routine';

    final body = jsonEncode({
      'myVeggieId': myVeggieId,
      'content': content,
      'period': period,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소 루틴 추가 실패');
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