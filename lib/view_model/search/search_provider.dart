import 'package:farmus/view_model/search/notifier/page_notifier.dart';
import 'package:farmus/view_model/search/notifier/search_difficulty_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchDifficultyProvider =
    StateNotifierProvider<SearchDifficultyNotifier, Map<String, bool>>(
  (ref) => SearchDifficultyNotifier(),
);

final aboutSearchPageProvider = StateNotifierProvider<PageNotifier, int>((ref) {
  return PageNotifier();
});
