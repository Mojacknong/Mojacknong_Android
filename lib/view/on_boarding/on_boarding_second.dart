import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/farmus_theme_color.dart';
import '../../common/farmus_theme_text_style.dart';
import '../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingSecond extends ConsumerState {

  @override
  Widget build(BuildContext context) {
    final hasSpecialCharacters = ref.watch(onBoardingProvider);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "반가워요!\n프로필을 설정해볼까요?",
              style: FarmusThemeTextStyle.darkSemiBold20,
            ),
          ),
          const SizedBox(height: 30),

          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "닉네임",
              textAlign: TextAlign.start,
              style: FarmusThemeTextStyle.darkMedium13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
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
                errorText: hasSpecialCharacters.hasSpecialCharacters
                    ? "특수문자는 입력할 수 없어요"
                    : null,
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
              },
            ),
          ),
        ],
      ),
    );
  }
}

