import 'package:farmus/common/base/base_text_input.dart';
import 'package:farmus/common/primary_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNicknameTextInput extends ConsumerWidget
    implements BaseTextInput {
  const OnBoardingNicknameTextInput({
    Key? key,
    this.initialValue,
    this.maxLength,
    this.hintText,
  }) : super(key: key);

  final String? initialValue;
  @override
  final int? maxLength;
  @override
  final String? hintText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    return PrimaryTextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      hintText: hintText,
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
      onChanged: (value) {
        ref.read(onBoardingProfileProvider.notifier).updateNickname(value);
        ref
            .read(onBoardingSpecialCharactersProvider.notifier)
            .checkForSpecialCharacters(value);
      },
    );
  }
}
