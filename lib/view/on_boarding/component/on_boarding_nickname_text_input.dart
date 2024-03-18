import 'package:farmus/common/base/base_text_input.dart';
import 'package:farmus/common/primary_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNicknameTextInput extends ConsumerWidget
    implements BaseTextInput {
  const OnBoardingNicknameTextInput(
      {Key? key,
      this.initialValue,
      this.maxLength,
      this.hintText,
      this.errorText,
      this.errorBorder,
      this.errorStyle,
      this.onChanged})
      : super(key: key);

  @override
  final String? initialValue;
  @override
  final int? maxLength;
  @override
  final String? hintText;
  @override
  final String? errorText;
  @override
  final OutlineInputBorder? errorBorder;
  @override
  final TextStyle? errorStyle;
  @override
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryTextFormField(
        initialValue: initialValue,
        maxLength: maxLength,
        hintText: hintText,
        errorText: errorText,
        errorBorder: errorBorder,
        errorStyle: errorStyle,
        onChanged: (value) {
          ref.read(onBoardingProfileProvider.notifier).updateNickname(value);
          ref
              .read(onBoardingSpecialCharactersProvider.notifier)
              .checkForSpecialCharacters(value);
        },
        nowLength:
            "${ref.watch(onBoardingProfileProvider).nickname == null ? 0 : ref.watch(onBoardingProfileProvider).nickname?.length}");
  }
}
