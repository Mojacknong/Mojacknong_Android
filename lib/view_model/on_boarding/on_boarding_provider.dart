import 'dart:async';

import 'package:farmus/model/on_boarding/on_boarding_level_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_motivation_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_profile_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_time_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:farmus/view_model/on_boarding/notifier/level_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/motivation_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/move_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/profile_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/special_character_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/time_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_provider.g.dart';

// 온보딩 프로필 설정 로직
final onBoardingProfileSetProvider =
    StateNotifierProvider<ProfileNotifier, OnBoardingProfileModel>((ref) {
  return ProfileNotifier();
});

// 특수문자 로직
final onBoardingSpecialCharactersProvider =
    StateNotifierProvider<SpecialCharacterNotifier, bool>((ref) {
  return SpecialCharacterNotifier();
});

// 이동
final onBoardingMoveProvider =
    StateNotifierProvider<MoveNotifier, String>((ref) {
  return MoveNotifier();
});

// 온보딩 동기 설정 로직
final onBoardingMotivationProvider =
    StateNotifierProvider<MotivationNotifier, OnBoardingMotivationModel>((ref) {
  return MotivationNotifier();
});

// 온보딩 채소 추천 로직
final onBoardingTimeProvider =
    StateNotifierProvider<TimeNotifier, OnBoardingTimeModel>((ref) {
  return TimeNotifier();
});

// 온보딩 난이도 로직
final onBoardingLevelProvider =
    StateNotifierProvider<LevelNotifier, OnBoardingLevelModel>((ref) {
  return LevelNotifier();
});

@riverpod
Future<OnBoardingUserProfileModel> onBoardingUserProfileModel(
    OnBoardingUserProfileModelRef ref) async {
  return OnBoardingUserProfileModel(file: null, nickName: 'nickName');
}