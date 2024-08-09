import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class OnBoardingNicknameTextInput extends ConsumerStatefulWidget {
  const OnBoardingNicknameTextInput({
    super.key,
    this.initialValue,
    this.errorText,
  });

  final String? initialValue;
  final String? errorText;

  @override
  ConsumerState<OnBoardingNicknameTextInput> createState() => _OnBoardingNicknameTextInputState();
}

class _OnBoardingNicknameTextInputState extends ConsumerState<OnBoardingNicknameTextInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    final nowLength = _controller.text.length;

    return PrimaryTextFormField(
      controller: _controller,
      maxLength: 10,
      maxLines: 1,
      minLines: 1,
      hintText: '파머',
      errorText: widget.errorText,
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
        ref.read(onBoardingProfileSetProvider.notifier).updateNickname(value);
        ref.read(onBoardingSpecialCharactersProvider.notifier).checkForSpecialCharacters(value);
      },
      suffix: Text("$nowLength /10"),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
