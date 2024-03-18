import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegiAddMoveNotifier extends StateNotifier<String> {
  VegiAddMoveNotifier() : super("first");

  void moveToFirstPage() {
    state = "first";
  }

  void moveToSecondPage() {
    state = "second";
  }

  void reset() {
    state = "first";
  }
}
