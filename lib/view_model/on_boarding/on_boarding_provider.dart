import 'package:farmus/model/profile.dart';
import 'package:farmus/view_model/on_boarding/profile_notifier.dart';
import 'package:farmus/view_model/on_boarding/special_character_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onBoardingProvider =
    StateNotifierProvider<ProfileNotifier, Profile>((ref) {
  return ProfileNotifier();
});

final onBoardingSpecialCharacters = StateNotifierProvider<SpecialCharacterNotifier, bool>((ref) {
  return SpecialCharacterNotifier();
});
