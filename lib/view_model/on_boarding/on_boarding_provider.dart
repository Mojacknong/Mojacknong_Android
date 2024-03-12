import 'package:farmus/model/on_boarding/on_boarding_profile_model.dart';
import 'package:farmus/model/on_boarding/on_boarding_motivation_model.dart';
import 'package:farmus/view_model/on_boarding/notifier/motivation_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/move_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/profile_notifier.dart';
import 'package:farmus/view_model/on_boarding/notifier/special_character_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 온보딩 프로필 설정 로직
final onBoardingProfileProvider =
    StateNotifierProvider<ProfileNotifier, OnBoardingProfileModel>((ref) {
  return ProfileNotifier();
});

// 특수문자 로직
final onBoardingSpecialCharactersProvider =
    StateNotifierProvider<SpecialCharacterNotifier, bool>((ref) {
  return SpecialCharacterNotifier();
});

// 특수문자 로직
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
StateNotifierProvider<MotivationNotifier, OnBoardingMotivationModel>((ref) {
  return MotivationNotifier();
});
