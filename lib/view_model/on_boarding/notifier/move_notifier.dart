import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoveNotifier extends StateNotifier<String> {
  // TODO 초기 설정 바꾸기
  MoveNotifier() : super("second");

  void moveToNextPage() {
    state = "second"; // 다음 페이지 인덱스로 이동
  }
}
