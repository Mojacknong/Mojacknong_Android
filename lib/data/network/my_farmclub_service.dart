import 'dart:convert';

import 'base_api_services.dart';

class MyFarmclubService {
  Future<String> myFarmclub() async {
    const url = '/api/farm-club/me';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Farmclub List');
    }
  }

  Future<String> myFarmclubInfo(int myVeggieId) async {
    final url = '/api/farm-club/me/$myVeggieId';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }
}
