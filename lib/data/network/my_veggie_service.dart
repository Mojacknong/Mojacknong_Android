import 'dart:convert';
import 'dart:io';

import 'base_api_services.dart';

class MyVeggieService {
  final ApiClient apiClient = ApiClient();

  Future<String> myVeggieList() async {
    const url = '/api/my-veggie/simple-list';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieAdd(
    String nickname,
    String birth,
    String veggieInfoId,
  ) async {
    const url = '/api/my-veggie';
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'nickname': nickname,
      'birth': birth,
      'veggieInfoId': veggieInfoId,
    });

    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to add my veggie');
    }
  }

  Future<String> myVeggieProfileList(int myVeggieId) async {
    final url = '/api/my-veggie/$myVeggieId/profile';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieDiaryOne(int myVeggieId) async {
    final url = '/api/my-veggie/diary/$myVeggieId/one';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieInfoList() async {
    const url = '/api/my-veggie/list';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieDelete(int myVeggieId) async {
    const url = '/api/my-veggie';

    final body = jsonEncode({
      'myVeggieId': myVeggieId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소 삭제 실패');
    }
  }

  Future<String> myVeggieDiaryAll(int myVeggieId) async {
    final url = '/api/my-veggie/diary/$myVeggieId/all';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie Diary');
    }
  }

  Future<String> myVeggieDiaryAdd(
    File file,
    String content,
    bool isOpen,
    String state,
    int myVeggieId,
  ) async {
    const url = '/api/my-veggie/diary';

    final response = await apiClient.postDiary(
      url,
      file,
      content,
      isOpen,
      state,
      myVeggieId,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to add myVeggieDiaryAdd');
    }
  }
}
