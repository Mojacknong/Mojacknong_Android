//탐색탭이란
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:farmus/view_model/search/page_notifier.dart';
import 'package:farmus/view_model/search/search_difficulty_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_detail_provider.g.dart';

final aboutSearchPageProvider = StateNotifierProvider<PageNotifier, int>((ref) {
  return PageNotifier();
});

final searchDifficultyBtnProvider =
    StateNotifierProvider<SearchDifficultyNotifier, Map<String, bool>>(
  (ref) => SearchDifficultyNotifier(),
);

@riverpod
Future<List<SearchFarmclubInfoModel>?> searchFarmclubDifficulty(
    SearchFarmclubDifficultyRef ref) async {
  final repository = SearchFarmclubRepository();
  final filteredDifficulties =
      ref.read(searchDifficultyBtnProvider.notifier).getFilteredDifficulties();
  final farmclubs = await repository.fetchFarmclubsByDifficulty(
    filteredDifficulties,
  );
  return farmclubs;
}
