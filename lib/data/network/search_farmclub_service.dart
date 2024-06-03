import 'dart:convert';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';

class SearchFarmclubService {
  Future<List<SearchFarmclubInfoModel>> searchFarmclubs({
    List<String>? difficulties,
    String? keyword,
  }) async {
    const url = '/api/farm-club/search';

    var queryParams = <String, dynamic>{};
    if (difficulties != null) queryParams['difficulties'] = difficulties;
    if (keyword != null && keyword.isNotEmpty) queryParams['keyword'] = keyword;

    ApiClient apiClient = ApiClient();
    final response = await apiClient.get(url.toString());

    if (response.statusCode == 200) {
      final decodedBody = utf8.decode(response.bodyBytes);
      final data = json.decode(decodedBody)['data'] as List;
      return data
          .map((item) => SearchFarmclubInfoModel.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load farmclubs');
    }
  }

  Future<List<SearchFarmclubInfoModel>> fetchFarmclubsByDifficulty(
      List<String> difficulty) async {
    ApiClient apiClient = ApiClient();
    const url = '/api/farm-club/search';
    final response = await apiClient.get(url.toString());

    if (response.statusCode == 200) {
      final decodedBody = utf8.decode(response.bodyBytes);
      final data = json.decode(decodedBody)['data'] as List;

      final filteredData = data.where((item) {
        final itemDifficulty = item['difficulty'] as String? ?? '';
        return difficulty.contains(itemDifficulty);
      }).toList();

      return filteredData
          .map((item) => SearchFarmclubInfoModel.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load farmclubs');
    }
  }
}
