import 'dart:convert';

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

  Future<String> recommendVeggieInfo() async {
    const url = '/api/veggie-info/recommend';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to Recommend Veggie Info');
    }
  }
}