import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegeCountProvider = StateNotifierProvider<VegeCountNotifier, int>((ref) {
  return VegeCountNotifier();
});

class VegeCountNotifier extends StateNotifier<int> {
  VegeCountNotifier() : super(0);

  void setCount(int newCount) {
    state = newCount;
  }

  void increment() {
    state++;
  }
}
