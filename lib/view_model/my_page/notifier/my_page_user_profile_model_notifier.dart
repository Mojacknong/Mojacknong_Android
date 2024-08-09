import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/my_page/my_page_profile_model.dart';
import '../../../repository/my_page_repository.dart';

part 'my_page_user_profile_model_notifier.g.dart';

@riverpod
class MyPageUserProfileModelNotifier
    extends _$MyPageUserProfileModelNotifier {
  Future<MyPageProfileModel> build() async {
    return MyPageProfileModel(image: File(''), nickname: 'nickname');
  }

  Future<void> postUserProfile(MyPageProfileModel profile) async {
    await MyPageRepository.changeMyProfile(profile);
  }
}
