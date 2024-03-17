import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoNotifier extends StateNotifier<String> {
  ToDoNotifier() : super("");

  // 루틴 버튼 클릭
  void selectRoutine() {
    state = "routine";
  }

  // 팜클럽 미션 버튼 클릭
  void selectFarmclubMission() {
    state = "farmclubMission";
  }
}
