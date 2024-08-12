import 'package:flutter_riverpod/flutter_riverpod.dart';

final myVeggieInfoModeProvider =
    StateNotifierProvider<MyVeggieInfoModeNotifier, bool>((ref) {
  return MyVeggieInfoModeNotifier();
});

class MyVeggieInfoModeNotifier extends StateNotifier<bool> {
  MyVeggieInfoModeNotifier() : super(false);

  void changeMyVeggieScreenMode() {
    if (state == false) {
      state = true;
    } else {
      state = false;
    }
  }
}
