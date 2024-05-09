import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNicknameTextInput extends ConsumerWidget {
  const OnBoardingNicknameTextInput(
      {super.key, this.initialValue, this.errorText});

  final String? initialValue;
  final String? errorText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nowLength = ref.watch(onBoardingProfileProvider).nickname == null
        ? 0
        : ref.watch(onBoardingProfileProvider).nickname?.length;

    return PrimaryTextFormField(
        initialValue: initialValue,
        maxLength: 10,
        maxLines: 1,
        minLines: 1,
        hintText: '파머',
        errorText: errorText,
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
        suffix: Text("$nowLength /10"));
  }
}
