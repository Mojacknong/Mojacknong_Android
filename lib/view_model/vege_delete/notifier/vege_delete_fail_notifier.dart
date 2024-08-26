import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDeleteFailNotifier extends StateNotifier<String> {
  VegeDeleteFailNotifier() : super('');

  void selectedBox(String index) {
    state = index;
  }
}
