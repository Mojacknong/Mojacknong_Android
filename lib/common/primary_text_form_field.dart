import 'package:farmus/common/base/base_text_input.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class PrimaryTextFormField extends StatelessWidget implements BaseTextInput {
  const PrimaryTextFormField(
      {super.key,
      this.maxLength,
      this.hintText,
      this.initialValue,
      this.errorText,
      this.errorBorder,
      this.errorStyle,
      this.onChanged});

  @override
  final String? hintText;

  @override
  final int? maxLength;

  final String? initialValue;

  final String? errorText;

  final OutlineInputBorder? errorBorder;

  final TextStyle? errorStyle;

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: FarmusThemeColor.gray3,
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
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
        errorText: errorText,
        errorBorder: errorBorder,
        errorStyle: errorStyle,
      ),
      onChanged: onChanged,
    );
  }
}
