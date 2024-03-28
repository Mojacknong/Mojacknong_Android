import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegiDeleteNotifier extends StateNotifier<String> {
  VegiDeleteNotifier() : super('');

  void selectedBox(String index) {
    state = index;
  }
}
