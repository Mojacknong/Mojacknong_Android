import 'package:farmus/model/home/vege_routine_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeRoutineEditNotifier extends StateNotifier<VegeRoutineModel> {
  VegeRoutineEditNotifier({String? initName})
      : super(VegeRoutineModel(
            routineName: initName ?? '',
            isComplete: initName!.isNotEmpty ? true : false));

  void updateName(String name) {
    print(name);
    state = state.copyWith(
      routineName: name,
      cycle: state.cycle,
      isComplete: name.isNotEmpty,
    );
    print(state.isComplete);
  }
}
