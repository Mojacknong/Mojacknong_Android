import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryTextField extends ConsumerWidget {
  const PrimaryTextField(
      {super.key, required this.maxLength, required this.hintText});

  final int maxLength;
  final String hintText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      minLines: 1,
      maxLines: 1,
      maxLength: maxLength,
      style: FarmusThemeTextStyle.darkSemiBold19,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: FarmusThemeTextStyle.gray3SemiBold19,
          border: InputBorder.none,
          counterText: '',
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 9.0, horizontal: 4.0)),
    );
  }
}
