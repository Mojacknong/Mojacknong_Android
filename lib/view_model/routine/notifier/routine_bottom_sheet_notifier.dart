import 'package:farmus/model/home/routine_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:farmus/view_model/routine/notifier/my_veggie_routine_info_notifier.dart';
import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_bottom_sheet_notifier.g.dart';

@riverpod
class RoutineBottomSheetNotifier extends _$RoutineBottomSheetNotifier {
  @override
  Future<RoutineModel> build({
    required int myVeggieId,
    required String routineName,
    required int period,
    required bool isSwitch,
  }) async {
    return RoutineModel(
      myVeggieId: myVeggieId,
      routineName: routineName,
      period: period,
      isSwitch: isSwitch,
      isComplete: isSwitch
          ? routineName.isNotEmpty && period != -1
          : routineName.isNotEmpty,
    );
  }

  void updateName(String name) {
    final period = state.value?.period ?? -1;
    state = AsyncData(
      RoutineModel(
        myVeggieId: state.value!.myVeggieId,
        routineName: name,
        period: period,
        isSwitch: state.value!.isSwitch,
        isComplete: state.value!.isSwitch
            ? name.isNotEmpty && period != -1
            : name.isNotEmpty,
      ),
    );
  }

  void updatePeriod(int? period) {
    final name = state.value?.routineName ?? '';
    state = AsyncData(
      RoutineModel(
        myVeggieId: state.value!.myVeggieId,
        routineName: name,
        period: period ?? -1,
        isSwitch: state.value!.isSwitch,
        isComplete: state.value!.isSwitch
            ? name.isNotEmpty &&
                period != -1 &&
                period != 00 &&
                period != 0 &&
                period != null
            : name.isNotEmpty,
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
            ? currentState.routineName!.isNotEmpty && currentState.period != -1
            : currentState.routineName!.isNotEmpty,
      ),
    );
  }

  void _initRoutine() {
    ref.invalidate(routineDateListModelProvider);
    ref.invalidate(myVeggieRoutineInfoModelProvider);
  }

  Future<void> routineAdd(int myVeggieId, String content, int period) async {
    await RoutineRepository.routineAdd(myVeggieId, content, period);
    _initRoutine();
  }

  Future<void> routineEdit(int routineId, String content, int period) async {
    await RoutineRepository.routineEdit(routineId, content, period);
    _initRoutine();
  }
}
