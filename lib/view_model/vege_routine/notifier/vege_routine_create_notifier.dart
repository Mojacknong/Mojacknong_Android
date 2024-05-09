import 'package:farmus/model/home/vege_routine_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeRoutineCreateNotifier extends StateNotifier<VegeRoutineModel> {
  VegeRoutineCreateNotifier()
      : super(VegeRoutineModel(routineName: '', isComplete: false));

  void updateName(String name) {
    state = state.copyWith(
      routineName: name,
      cycle: state.cycle,
      isComplete: name.isNotEmpty,
    );
  }
}
