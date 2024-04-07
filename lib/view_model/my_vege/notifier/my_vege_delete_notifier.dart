import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeDeleteNotifier extends StateNotifier<bool> {
  MyVegeDeleteNotifier() : super(false);

  void changeMyVegeScreenMode() {
    if (state == false) {
      state = true;
    } else {
      state = false;
    }
  }
}
