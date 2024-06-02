import 'dart:io';

import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_user_profile.g.dart';

@riverpod
class OnBoardingUserProfileModelNotifier
    extends _$OnBoardingUserProfileModelNotifier {
  @override
  Future<OnBoardingUserProfileModel> build() async {
    return OnBoardingUserProfileModel(file: File(''), nickName: 'nickName');
  }

  Future<void> postUserProfile(OnBoardingUserProfileModel profile) async {
    final response = await UserRepository.postUserProfile(profile);
    print(response);
  }
}
