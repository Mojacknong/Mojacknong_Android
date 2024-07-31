import 'package:farmus/model/home/routine_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:farmus/view_model/routine/notifier/my_veggie_routine_info_notifier.dart';
import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_add_notifier.g.dart';

@riverpod
class RoutineAddNotifier extends _$RoutineAddNotifier {
  @override
  Future<RoutineModel> build() async {
    return RoutineModel(
        myVeggieId: -1, routineName: '', period: -1, isComplete: false);
  }

  void updateName(String name) {
    final period = state.value?.period;
    state = AsyncData(
      RoutineModel(
        myVeggieId: state.value!.myVeggieId,
        routineName: name,
        period: period,
        isComplete: name.isNotEmpty && period != null && period != -1,
      ),
    );
  }

  void updatePeriod(int? period) {
    final name = state.value?.routineName;
    state = AsyncData(
      RoutineModel(
        myVeggieId: state.value!.myVeggieId,
        routineName: name,
        period: period ?? -1,
        isComplete: name != null && name.isNotEmpty && period != null,
      ),
    );
  }

  Future<void> routineAdd(
    int myVeggieId,
    String content,
    int period,
  ) async {
    await RoutineRepository.routineAdd(myVeggieId, content, period);

    ref.invalidate(routineDateListModelProvider);
    ref.invalidate(myVeggieRoutineInfoModelProvider);
  }
}
