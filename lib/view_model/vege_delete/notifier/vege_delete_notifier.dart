import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDeleteReasonNotifier extends StateNotifier<String> {
  VegeDeleteReasonNotifier() : super('');

  void selectedBox(String index) {
    state = index;
  }

  void reset() {
    state = '';
  }
}
