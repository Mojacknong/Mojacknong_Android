import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/search/recommended_farmclubs_model.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:farmus/view_model/search/page_notifier.dart';
import 'package:farmus/view_model/search/search_difficulty_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

//탐색탭이란
final aboutSearchPageProvider = StateNotifierProvider<PageNotifier, int>((ref) {
  return PageNotifier();
});

//난이도 버튼
final searchDifficultyBtnProvider =
    StateNotifierProvider<SearchDifficultyNotifier, Map<String, bool>>(
  (ref) => SearchDifficultyNotifier(),
);

//난이도 필터링
final searchFarmclubDifficultyProvider =
    FutureProvider<List<SearchFarmclubInfoModel>?>((ref) async {
  final service = SearchFarmclubService();
  final filteredDifficulties =
      ref.read(searchDifficultyBtnProvider.notifier).getFilteredDifficulties();
  final farmclubs =
      await service.fetchFarmclubsByDifficulty(filteredDifficulties);
  return farmclubs;
});

@riverpod
Future<RecommendedFarmclubsModel> recommendedFarmclubsModel(
    RecommendedFarmclubsModelRef ref) async {
  final repository = SearchFarmclubRepository();
  final recommendedFarmclubs = await repository.getRecommendedFarmclubs();

  return RecommendedFarmclubsModel(
      recFirst: recommendedFarmclubs.recFirst,
      recSecond: recommendedFarmclubs.recSecond);
}
