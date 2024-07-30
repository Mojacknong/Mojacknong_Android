import 'package:farmus/model/home/routine_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineEditNotifier extends StateNotifier<RoutineModel> {
  RoutineEditNotifier({String? initName})
      : super(RoutineModel(
          myVeggieId: 0,
          routineName: initName ?? '',
          isComplete: initName!.isNotEmpty && initName != '' ? true : false,
        ));

  void updateName(String name) {
    state = state.copyWith(
      routineName: name,
      period: state.period,
      isComplete: name.isNotEmpty,
    );
  }
}
