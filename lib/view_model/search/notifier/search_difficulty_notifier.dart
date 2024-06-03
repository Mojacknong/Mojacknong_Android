import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchDifficultyNotifier extends StateNotifier<Map<String, bool>> {
  SearchDifficultyNotifier()
      : super({
          'EASY': false,
          'NORMAL': false,
          'HARD': false,
        });

  void toggleLevel(String level) {
    state = {
      for (final entry in state.entries)
        if (entry.key == level)
          entry.key: !entry.value
        else
          entry.key: entry.value,
    };
  }

  List<String> getFilteredDifficulties() {
    final selectedDifficulties =
        state.entries.where((entry) => entry.value).map((e) => e.key).toList();

    if (selectedDifficulties.isEmpty) {
      return state.keys.toList();
    }

    return selectedDifficulties;
  }
}
