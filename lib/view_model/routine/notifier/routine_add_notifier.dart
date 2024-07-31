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
        myVeggieId: -1,
        routineName: '',
        period: -1,
        isSwitch: true,
        isComplete: false);
  }

  void updateName(String name) {
    final period = state.value?.period;
    state = AsyncData(
      RoutineModel(
        myVeggieId: state.value!.myVeggieId,
        routineName: name,
        period: period,
        isSwitch: state.value!.isSwitch,
        isComplete: state.value!.isSwitch
            ? name.isNotEmpty && period != null && period != -1
            : name.isNotEmpty,
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
        isSwitch: state.value!.isSwitch,
        isComplete: state.value!.isSwitch
            ? name != null && name.isNotEmpty && period != null
            : name != null && name.isNotEmpty,
      ),
    );
  }

  void toggle() {
    final currentState = state.value!;
    final newIsSwitch = !currentState.isSwitch;

    state = AsyncData(
      RoutineModel(
        myVeggieId: currentState.myVeggieId,
        routineName: currentState.routineName,
        period: newIsSwitch ? currentState.period : -1,
        isSwitch: newIsSwitch,
        isComplete: newIsSwitch
            ? currentState.routineName!.isNotEmpty &&
                currentState.period != null &&
                currentState.period != -1
            : currentState.routineName!.isNotEmpty,
      ),
    );
  }

  Future<void> routineAdd(
    int myVeggieId,
    String content,
    int period,
  ) async {
    if (state.value!.isSwitch == false) {
      period = 0;
    }
    await RoutineRepository.routineAdd(myVeggieId, content, period);

    ref.invalidate(routineDateListModelProvider);
    ref.invalidate(myVeggieRoutineInfoModelProvider);
  }
}
