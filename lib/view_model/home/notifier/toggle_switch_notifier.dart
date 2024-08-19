import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToggleSwitchNotifier extends StateNotifier<bool> {
  ToggleSwitchNotifier() : super(true);

  void toggle() {
    state = !state;
  }
}
