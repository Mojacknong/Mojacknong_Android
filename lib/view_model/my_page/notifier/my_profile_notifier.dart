import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_page/my_page_profile_model.dart';

class MyProfileNotifier extends StateNotifier<MyPageProfileModel> {
  MyProfileNotifier()
      : super(
          const MyPageProfileModel(
              nickname: null, image: null, isInfoChangeComplete: false),
        );

  bool _isInfoChangeComplete = false;

  bool get isInfoChangeComplete => _isInfoChangeComplete;

  void updateNickname(String nickname) {
    if (nickname.isNotEmpty) {
      _isInfoChangeComplete = true;
    } else {
      _isInfoChangeComplete = false;
    }

    state = state.copyWith(
      nickname: nickname,
      isInfoChangeComplete: isInfoChangeComplete,
    );
  }

  void updateProfileImage(File profileImage) {
    if (profileImage.path.isNotEmpty) {
      _isInfoChangeComplete = true;
    } else {
      _isInfoChangeComplete = false;
    }

    state = state.copyWith(
      image: profileImage,
      isInfoChangeComplete: isInfoChangeComplete,
    );
  }
}
