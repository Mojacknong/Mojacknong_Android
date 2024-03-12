import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoveNotifier extends StateNotifier<String> {
  // TODO 초기 설정 바꾸기
  MoveNotifier() : super("second");

  void moveToFirstPage() {
    state = "first";
  }

  void moveToSecondPage() {
    state = "second";
  }

  void moveToThirdPage() {
    state = "third";
  }

  void moveToFourthPage() {
    state = "fourth";
  }
}
