import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDeleteNotifier extends StateNotifier<String> {
  VegeDeleteNotifier() : super('');

  void selectedBox(String index) {
    state = index;
  }

  void reset() {
    state = '';
  }
}
