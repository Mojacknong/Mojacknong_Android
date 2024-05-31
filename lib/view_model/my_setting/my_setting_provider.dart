import 'package:farmus/view_model/my_setting/notifier/my_setting_push_alarm_switch_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mySettingSwitchProvider =
    StateNotifierProvider<MySettingPushAlarmSwitchNotifier, bool>((ref) {
  return MySettingPushAlarmSwitchNotifier();
});
