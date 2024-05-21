import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeletelNotifier extends StateNotifier<String> {
  DeletelNotifier() : super('');

  void updateSearchText(String text) {
    state = text;
  }

  void clearSearchText() {
    state = '';
  }
}
