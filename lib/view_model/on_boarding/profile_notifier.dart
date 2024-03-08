import 'package:farmus/model/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<Profile> {
  ProfileNotifier()
      : super(
          Profile(
            nickname: null,
            profileImage: null,
            isProfileComplete: false,
          ),
        );

  bool _isProfileComplete = false;

  bool get isProfileComplete => _isProfileComplete;

  void updateNickname(String nickname) {
    if (nickname.isNotEmpty &&
        state.profileImage != null &&
        state.profileImage!.isNotEmpty) {
      _isProfileComplete = true;
    } else {
      _isProfileComplete = false;
    }

    state = state.copyWith(
      nickname: nickname,
      isProfileComplete: isProfileComplete,
    );
  }

  void updateProfileImage(String profileImage) {
    if (profileImage.isNotEmpty &&
        state.nickname != null &&
        state.nickname!.isNotEmpty) {
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
