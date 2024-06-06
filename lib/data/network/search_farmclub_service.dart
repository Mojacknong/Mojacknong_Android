import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_model.dart';
import 'package:farmus/model/search/recommended_farmclubs_model.dart';
import 'package:farmus/model/search/search_farmclub_detail_model.dart';
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

  Future<SearchFarmclubDetailModel> farmclubDetail(int farmClubId) async {
    final String farmClubIdString = farmClubId.toString();
    final url = '/api/farm-club/$farmClubIdString';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          jsonDecode(utf8.decode(response.bodyBytes));

      return SearchFarmclubDetailModel.fromJson(jsonResponse['data']);
    } else {
      throw Exception('Failed to load farm club detail');
    }
  }

  Future<RecommendedFarmclubsModel> getRecommendedFarmclubs() async {
    ApiClient apiClient = ApiClient();
    const url = '/api/farm-club/recommend';
    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData =
          jsonDecode(utf8.decode(response.bodyBytes));
      final Map<String, dynamic> data = responseData['data'];
      final recFirstData = data['recFirst'];
      final recSecondData = data['recSecond'];
      final recFirst = SearchFarmclubDetailModel.fromJson(recFirstData);
      final recSecond = SearchFarmclubDetailModel.fromJson(recSecondData);
      return RecommendedFarmclubsModel(
          recFirst: recFirst, recSecond: recSecond);
    } else {
      throw Exception(
          'Failed to load recommended farm clubs: ${response.statusCode}');
    }
  }

  Future<String> postSignUpVeggie(int farmClubId, int myVeggieId) async {
    const url = '/api/farm-club/register';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    final body = jsonEncode({
      'farmClubId': farmClubId,
      'myVeggieId': myVeggieId,
    });
    ApiClient apiClient = ApiClient();
    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to post vege');
    }
  }

  Future<FarmclubSignupModel> getMyVeggie(String veggieInfoId) async {
    final url = '/api/farm-club/my-veggie?veggieInfoId=$veggieInfoId';
    ApiClient apiClient = ApiClient();
    final response = await apiClient.get(url.toString());

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          jsonDecode(utf8.decode(response.bodyBytes));
      print(jsonResponse);
      return FarmclubSignupModel.fromJson(jsonResponse['data']);
    } else {
      throw Exception('Failed to Recommend Veggie Info');
    }
  }

  Future<SearchFarmclubInfoModel> getMyVeggieInfo() async {
    ApiClient apiClient = ApiClient();
    const url = '/api/farm-club/search';
    final response = await apiClient.get(url.toString());

    if (response.statusCode == 200) {
      return SearchFarmclubInfoModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch my veggie data');
    }
  }
}
