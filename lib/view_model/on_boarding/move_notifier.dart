import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoveNotifier extends StateNotifier<String> {
  MoveNotifier() : super("first");

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
