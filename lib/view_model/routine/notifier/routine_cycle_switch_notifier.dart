import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineCycleSwitchNotifier extends StateNotifier<bool> {
  RoutineCycleSwitchNotifier() : super(true);

  void toggle() {
    state = !state;
  }
}
