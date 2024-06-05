import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_model.dart';
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

  static Future<FarmclubSignupModel> postSignUpVeggie(
      int farmClubId, int myVeggieId) async {
    FarmclubSignupModel response =
        await SearchFarmclubService().postSignUpVeggie(farmClubId, myVeggieId);
    return response;
  }

  static Future<FarmclubSignupModel> getMyVeggie(String veggieInfoId) async {
    FarmclubSignupModel response =
        await SearchFarmclubService().getMyVeggie(veggieInfoId);
    return response;
  }

  Future<SearchFarmclubInfoModel> getMyVeggieInfo() async {
    SearchFarmclubInfoModel response =
        await SearchFarmclubService().getMyVeggieInfo();
    return response;
  }

  Future<List<SearchFarmclubInfoModel>?> fetchFarmclubs(String keyword) async {
    SearchFarmclubService searchFarmclubService = SearchFarmclubService();

    return await searchFarmclubService.fetchFarmclubs(keyword);
  }

  Future<List<SearchFarmclubInfoModel>?> fetchFarmclubs(String keyword) async {
    SearchFarmclubService searchFarmclubService = SearchFarmclubService();

    return await searchFarmclubService.fetchFarmclubs(keyword);
  }
}
