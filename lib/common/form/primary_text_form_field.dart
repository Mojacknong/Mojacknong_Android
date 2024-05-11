import 'package:farmus/common/base/base_text_input.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextFormField extends StatelessWidget implements BaseTextInput {
  const PrimaryTextFormField(
      {super.key,
      this.maxLength,
      this.maxLines,
      this.minLines,
      this.hintText,
      this.initialValue,
      this.errorText,
      this.errorBorder,
      this.errorStyle,
      this.onChanged,
      this.suffix,
      this.keyboardType,
      this.inputFormatters,
      this.readOnly});

  @override
  final String? hintText;
  @override
  final int? maxLength;
  @override
  final int? minLines;
  @override
  final int? maxLines;
  @override
  final String? initialValue;
  @override
  final String? errorText;
  @override
  final OutlineInputBorder? errorBorder;
  @override
  final TextStyle? errorStyle;
  @override
  final ValueChanged<String>? onChanged;

  final Widget? suffix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      expands: (minLines == null && maxLines == null) ? true : false,
      keyboardType: keyboardType ?? TextInputType.text,
      inputFormatters: inputFormatters ?? [],
      readOnly: readOnly ?? false,
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
          counterText: '',
          suffix: Stack(
            alignment: Alignment.bottomRight,
            children: [suffix!],
          ),
          suffixStyle: FarmusThemeTextStyle.gray2Medium13),
      onChanged: onChanged,
    );
  }
}
