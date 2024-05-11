import 'package:farmus/model/home/routine_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineCreateNotifier extends StateNotifier<RoutineModel> {
  RoutineCreateNotifier()
      : super(RoutineModel(routineName: '', isComplete: false));

  void updateName(String name) {
    state = state.copyWith(
      routineName: name,
      cycle: state.cycle,
      isComplete: name.isNotEmpty,
    );
  }
}
