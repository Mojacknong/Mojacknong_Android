import 'package:flutter_riverpod/flutter_riverpod.dart';

class MySettingPushAlarmSwitchNotifier extends StateNotifier<bool> {
  MySettingPushAlarmSwitchNotifier() : super(false);

  void toggle() {
    state = !state;
  }
}
