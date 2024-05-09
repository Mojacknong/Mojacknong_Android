import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineCheckNotifier extends StateNotifier<bool> {
  RoutineCheckNotifier({bool initialChecked = false}) : super(initialChecked);

  void toggleRoutine() {
    state = !state;
    print(state);
  }
}
