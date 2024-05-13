import 'package:flutter_riverpod/flutter_riverpod.dart';

class CancelNotifier extends StateNotifier<String> {
  CancelNotifier() : super('');

  void updateSearchText(String text) {
    state = text;
  }

  void clearSearchText() {
    state = '';
  }
}
