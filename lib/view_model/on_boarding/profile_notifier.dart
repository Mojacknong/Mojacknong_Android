import 'package:farmus/model/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<Profile> {
  ProfileNotifier() : super(Profile(nickname: '', profileImage: ''));

  bool _hasSpecialCharacters = false;
  bool get hasSpecialCharacters => _hasSpecialCharacters;

  void updateNickname(String nickname) {
    if (nickname.contains(RegExp(r'[!@#<>?":.,_`~;/[\]\\|=+)(*&^%$]'))) {
      _hasSpecialCharacters = true;
      print("에러에러에러에러에러에러에러에러에러에러에러");
    } else {
      _hasSpecialCharacters = false;
      print("정상정상정상정상정상정상정상정상정상");
    }

    state = state.copyWith(nickname: nickname);
  }
}
