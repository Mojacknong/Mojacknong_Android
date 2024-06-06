import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoNotifier extends StateNotifier<String> {
  ToDoNotifier() : super("routine");

  bool _isRoutineSelect = false;

  bool get isRoutineSelect => _isRoutineSelect;

  bool _isFarmclubMissionSelect = false;

  bool get isFarmclubMissionSelect => _isFarmclubMissionSelect;

  void selectRoutine() {
    _isRoutineSelect = true;
    _isFarmclubMissionSelect = false;
    state = "routine";
  }

  void selectFarmclubMission() {
    _isRoutineSelect = false;
    _isFarmclubMissionSelect = true;
    state = "farmclubMission";
  }
}
