import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpecialCharacterNotifier extends StateNotifier<bool> {
  SpecialCharacterNotifier() : super(false);

  void checkForSpecialCharacters(String value) {
    final regex = RegExp(r'[!@#<>?":.,_ `~;/[\]\\|=+)(*&^%$]');
    state = regex.hasMatch(value);
  }
}
