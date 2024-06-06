import 'dart:convert';
import 'dart:io';

import 'base_api_services.dart';

class MyVeggieService {
  Future<String> myVeggieList() async {
    const url = '/api/my-veggie/simple-list';

    ApiClient apiClient = ApiClient();

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
    ApiClient apiClient = ApiClient();
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

  Future<String> myVeggieProfileList(String myVeggieId) async {
    final url = '/api/my-veggie/$myVeggieId/profile';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }
}
