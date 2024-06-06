import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/search/recommended_farmclubs_model.dart';
import 'package:farmus/model/search/search_farmclub_detail_model.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';

class SearchFarmclubRepository {
  Future<SearchFarmclubDetailModel> farmclubDetail(int id) async {
    SearchFarmclubDetailModel response =
        await SearchFarmclubService().farmclubDetail(id);
    return response;
  }

  Future<RecommendedFarmclubsModel> getRecommendedFarmclubs() async {
    SearchFarmclubService searchFarmclubService = SearchFarmclubService();
    final recommendedFarmclubs =
        await searchFarmclubService.getRecommendedFarmclubs();

    final recFirst = recommendedFarmclubs.recFirst;
    final recSecond = recommendedFarmclubs.recSecond;
    return RecommendedFarmclubsModel(recFirst: recFirst, recSecond: recSecond);
  }

  Future<List<SearchFarmclubInfoModel>?> fetchFarmclubsByDifficulty(
    List<String> filteredDifficulties,
  ) async {
    SearchFarmclubService searchFarmclubService = SearchFarmclubService();

    return await searchFarmclubService.fetchFarmclubsByDifficulty(
      filteredDifficulties,
    );
  }

  Future<List<SearchFarmclubInfoModel>?> fetchFarmclubs(String keyword) async {
    SearchFarmclubService searchFarmclubService = SearchFarmclubService();

    return await searchFarmclubService.fetchFarmclubs(keyword);
  }
}
