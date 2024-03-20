import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoNotifier extends StateNotifier<String> {
  ToDoNotifier() : super("routine");

  bool _isRoutineSelect = false;

  bool get isRoutineSelect => _isRoutineSelect;

  bool _isFarmclubMissionSelect = false;

  bool get isFarmclubMissionSelect => _isFarmclubMissionSelect;

  // 루틴 버튼 클릭
  void selectRoutine() {
    _isRoutineSelect = true;
    _isFarmclubMissionSelect = false;
    state = "routine";
  }

  // 팜클럽 미션 버튼 클릭
  void selectFarmclubMission() {
    _isRoutineSelect = false;
    _isFarmclubMissionSelect = true;
    state = "farmclubMission";
  }
}
