import 'package:farmus/model/home/routine_model.dart';
import 'package:farmus/view_model/routine/notifier/routine_cycle_switch_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/routine_edit_notifier.dart';

final routineEditProvider =
    StateNotifierProviderFamily<RoutineEditNotifier, RoutineModel, String?>(
  (ref, initialRoutineName) {
    return RoutineEditNotifier(initName: initialRoutineName ?? '');
  },
);

final routineCycleSwitchProvider =
    StateNotifierProvider<RoutineCycleSwitchNotifier, bool>((ref) {
  return RoutineCycleSwitchNotifier();
});

final selectedDateProvider = StateProvider.autoDispose<String?>(
    (ref) => DateTime.now().toIso8601String().split('T').first);
final selectedMonthProvider = StateProvider.autoDispose<String?>((ref) {
  final nowDate = DateTime.now();
  return '${nowDate.year}-${nowDate.month.toString().padLeft(2, '0')}';
});
