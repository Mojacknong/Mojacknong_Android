import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/view_model/search/notifier/page_notifier.dart';
import 'package:farmus/view_model/search/notifier/search_difficulty_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
