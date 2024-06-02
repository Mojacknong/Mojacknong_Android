import 'dart:async';
import 'dart:io';

import 'package:farmus/model/on_boarding/on_boarding_profile_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:farmus/view_model/on_boarding/move_notifier.dart';
import 'package:farmus/view_model/on_boarding/profile_notifier.dart';
import 'package:farmus/view_model/on_boarding/special_character_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_provider.g.dart';

// 온보딩 프로필 설정 로직
final onBoardingProfileSetProvider =
    StateNotifierProvider.autoDispose<ProfileNotifier, OnBoardingProfileModel>(
        (ref) {
  return ProfileNotifier();
});

// 특수문자 로직
final onBoardingSpecialCharactersProvider =
    StateNotifierProvider.autoDispose<SpecialCharacterNotifier, bool>((ref) {
  return SpecialCharacterNotifier();
});

// 이동
final onBoardingMoveProvider =
    StateNotifierProvider.autoDispose<MoveNotifier, String>((ref) {
  return MoveNotifier();
});

@riverpod
Future<OnBoardingUserProfileModel> onBoardingUserProfileModel(
    OnBoardingUserProfileModelRef ref) async {
  return OnBoardingUserProfileModel(file: File(''), nickName: 'nickName');
}
