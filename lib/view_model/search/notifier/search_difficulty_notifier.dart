import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchDifficultyNotifier extends StateNotifier<Map<String, bool>> {
  SearchDifficultyNotifier()
      : super({
          '초급': false,
          '중급': false,
          '고급': false,
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
}
