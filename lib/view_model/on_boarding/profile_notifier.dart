import 'package:farmus/model/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<Profile> {
  ProfileNotifier()
      : super(Profile(
          nickname: '',
          profileImage: '',
          hasSpecialCharacters: false,
        ));

  bool _hasSpecialCharacters = false;

  bool get hasSpecialCharacters => _hasSpecialCharacters;

  void updateNickname(String nickname) {
    if (nickname.contains(RegExp(r'[!@#<>?":.,_ `~;/[\]\\|=+)(*&^%$]'))) {
      _hasSpecialCharacters = true;
    } else {
      _hasSpecialCharacters = false;
    }

    state = state.copyWith(hasSpecialCharacters: hasSpecialCharacters);
  }
}
