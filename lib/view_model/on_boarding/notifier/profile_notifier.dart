import 'package:farmus/model/on_boarding/on_boarding_profile_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfileNotifier extends StateNotifier<OnBoardingProfileModel> {
  ProfileNotifier()
      : super(
          OnBoardingProfileModel(
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
        state.profileImage!.path.isNotEmpty) {
      _isProfileComplete = true;
    } else {
      _isProfileComplete = false;
    }

    state = state.copyWith(
      nickname: nickname,
      isProfileComplete: isProfileComplete,
    );
  }

  void updateProfileImage(XFile profileImage) {
    if (profileImage.path.isNotEmpty &&
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
