import 'package:farmus/repository/routine_repository.dart';
import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'my_veggie_routine_info_notifier.dart';

part 'routine_check_notifier.g.dart';

@riverpod
class RoutineCheckNotifier extends _$RoutineCheckNotifier {
  @override
  Future<bool> build() async {
    return false;
  }

  Future<void> routineCheck(int routineId) async {
    await RoutineRepository.myVeggieRoutineCheck(routineId);

    ref.invalidate(routineDateListModelProvider);
    ref.invalidate(myVeggieRoutineInfoModelProvider);
  }
}
