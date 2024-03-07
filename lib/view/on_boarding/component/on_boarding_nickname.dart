import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_theme_color.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNickname extends ConsumerWidget {
  const OnBoardingNickname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharacters);

    return TextFormField(
      maxLength: 10,
      decoration: InputDecoration(
        hintText: "파머",
        hintStyle: const TextStyle(
          color: FarmusThemeColor.grey3,
          fontFamily: "Pretendard",
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.grey4,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.grey4,
          ),
        ),
        errorText: hasSpecialCharacters ? "특수문자는 입력할 수 없어요" : null,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.grey4,
          ),
        ),
        errorStyle: const TextStyle(
          color: FarmusThemeColor.red,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.grey4,
          ),
        ),
      ),
      onChanged: (value) {
        ref.read(onBoardingProvider.notifier).updateNickname(value);
        ref
            .read(onBoardingSpecialCharacters.notifier)
            .checkForSpecialCharacters(value);
      },
    );
  }
}
