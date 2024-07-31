import 'package:farmus/model/home/routine_model.dart';
import 'package:farmus/view_model/routine/notifier/routine_cycle_switch_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/routine_check_notifier.dart';
import 'notifier/routine_edit_notifier.dart';

final routineEditProvider =
    StateNotifierProviderFamily<RoutineEditNotifier, RoutineModel, String?>(
  (ref, initialRoutineName) {
    return RoutineEditNotifier(initName: initialRoutineName ?? '');
  },
);

final routineCheckProvider =
    StateNotifierProvider.family<RoutineCheckNotifier, bool, String>(
  (ref, routineId) => RoutineCheckNotifier(),
);

final routineCycleSwitchProvider =
    StateNotifierProvider<RoutineCycleSwitchNotifier, bool>((ref) {
  return RoutineCycleSwitchNotifier();
});

final selectedDateProvider = StateProvider.autoDispose<String?>(
    (ref) => DateTime.now().toIso8601String().split('T').first);
final selectedMonthProvider = StateProvider.autoDispose<String?>((ref) => null);
