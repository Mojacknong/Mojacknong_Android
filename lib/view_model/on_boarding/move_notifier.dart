import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoveNotifier extends StateNotifier<String> {
  MoveNotifier() : super("first");

  void moveToNextPage() {
    state = "second"; // 다음 페이지 인덱스로 이동
  }
}
