import 'package:farmus/model/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<Profile> {
  ProfileNotifier()
      : super(
          Profile(
            nickname: null,
            profileImage: null,
            hasSpecialCharacters: false,
            isProfileComplete: false,
          ),
        );

  bool _hasSpecialCharacters = false;

  bool get hasSpecialCharacters => _hasSpecialCharacters;

  bool _isProfileComplete = false;

  bool get isProfileComplete => _isProfileComplete;

  void updateNickname(String nickname) {
    if (nickname.isNotEmpty && state.profileImage!.isNotEmpty) {
      _isProfileComplete = true;
    } else {
      _isProfileComplete = false;
    }

    if (nickname.contains(RegExp(r'[!@#<>?":.,_ `~;/[\]\\|=+)(*&^%$]'))) {
      _hasSpecialCharacters = true;
    } else {
      _hasSpecialCharacters = false;
    }
    state = state.copyWith(
      nickname: nickname,
      hasSpecialCharacters: hasSpecialCharacters,
      isProfileComplete: isProfileComplete,
    );
  }

  void updateProfileImage(String profileImage) {
    if (profileImage.isNotEmpty && state.nickname!.isNotEmpty) {
      _isProfileComplete = true;
    } else {
      _isProfileComplete = false;
    }

    state = state.copyWith(
      profileImage: profileImage,
      isProfileComplete: isProfileComplete,
    );
  }
}
