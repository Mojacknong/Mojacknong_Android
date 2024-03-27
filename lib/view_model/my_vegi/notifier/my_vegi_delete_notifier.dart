import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiDeleteNotifier extends StateNotifier<bool> {
  MyVegiDeleteNotifier() : super(false);

  void changeMyVegiScreenMode() {
    if (state == false) {
      state = true;
    } else {
      state = false;
    }
  }
}
