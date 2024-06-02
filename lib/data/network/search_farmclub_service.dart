import 'dart:convert';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';

class SearchFarmclubService {
  final ApiClient apiClient;

  SearchFarmclubService({required this.apiClient});

  Future<List<SearchFarmclubInfoModel>> searchFarmclubs({
    required String difficulty,
    String? keyword,
  }) async {
    final url =
        '/api/farm-club/search?difficulties=$difficulty&keyword=$keyword';

    final response = await apiClient.get(url);

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
}
