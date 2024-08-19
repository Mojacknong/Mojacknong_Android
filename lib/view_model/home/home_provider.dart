import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/toggle_switch_notifier.dart';

final selectedVegeIdProvider = StateProvider<int?>((ref) => null);

final selectedFarmclubIdProvider = StateProvider<int?>((ref) => null);

final toggleSwitchProvider =
    StateNotifierProvider.autoDispose<ToggleSwitchNotifier, bool>((ref) {
  return ToggleSwitchNotifier();
});
