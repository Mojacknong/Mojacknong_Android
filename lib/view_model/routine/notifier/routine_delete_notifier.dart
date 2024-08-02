import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/routine_repository.dart';
import 'my_veggie_routine_info_notifier.dart';

part 'routine_delete_notifier.g.dart';

@riverpod
class RoutineDeleteNotifier extends _$RoutineDeleteNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> routineDelete(int routineId) async {
    await RoutineRepository.routineDelete(routineId);

    ref.invalidate(routineDateListModelProvider);
    ref.invalidate(myVeggieRoutineInfoModelProvider);
  }
}
