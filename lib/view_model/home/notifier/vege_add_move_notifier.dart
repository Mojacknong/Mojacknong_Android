import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeAddMoveNotifier extends StateNotifier<String> {
  VegeAddMoveNotifier() : super("first");

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
