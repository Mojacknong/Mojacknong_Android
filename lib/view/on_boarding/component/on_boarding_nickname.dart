import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNickname extends ConsumerWidget {
  const OnBoardingNickname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(onBoardingProfileProvider).nickname;
    // 특수문자 체크 provider
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    return TextFormField(
      initialValue : nickname,
      maxLength: 10,
      decoration: InputDecoration(
        hintText: "파머",
        hintStyle: const TextStyle(
          color: FarmusThemeColor.gray3,
          fontFamily: "Pretendard",
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
        // hasSpecialCharacters가 true를 반환하면 에러 메시지 호출
        errorText: hasSpecialCharacters ? "특수문자는 입력할 수 없어요" : null,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
        errorStyle: const TextStyle(
          color: FarmusThemeColor.red,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
      ),
      onChanged: (value) {
        // nickname 값이 바뀔 때마다 provider 함수 실행
        ref.read(onBoardingProfileProvider.notifier).updateNickname(value);
        ref
            .read(onBoardingSpecialCharactersProvider.notifier)
            .checkForSpecialCharacters(value);
      },
    );
  }
}
