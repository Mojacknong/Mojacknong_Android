import 'dart:convert';
import 'dart:io';

import 'base_api_services.dart';

class VeggieInfoService {
  final ApiClient apiClient = ApiClient();

  Future<String> recommendVeggieInfo() async {
    const url = '/api/veggie-info/recommend';
    return _fetchData(url, '추천 채소 불러오기 실패');
  }

  Future<String> veggieInfo() async {
    const url = '/api/veggie-info';
    return _fetchData(url, '채소 정보 불러오기 실패');
  }

  Future<String> veggieInfoChange(
    int myVeggieId,
    String nickname,
    DateTime birth,
  ) async {
    const url = '/api/my-veggie';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode(
        {'myVeggieId': myVeggieId, 'nickname': nickname, 'birth': birth});

    return _updateData(url, headers, body, '채소 정보 수정 실패');
  }

  Future<String> _fetchData(String url, String errorMessage) async {
    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }

  Future<String> _updateData(String url, Map<String, String>? headers,
      Object body, String errorMessage) async {
    final response = await apiClient.put(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }
}
