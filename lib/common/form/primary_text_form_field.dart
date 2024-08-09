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
      this.readOnly,
      this.controller});

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
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      smartDashesType: SmartDashesType.disabled,
      smartQuotesType: SmartQuotesType.disabled,
      expands: (minLines == null && maxLines == null) ? true : false,
      keyboardType: keyboardType ?? TextInputType.text,
      inputFormatters: [
        EmojiInputFormatter(),
        ...?inputFormatters,
      ],
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
          filled: true,
          fillColor: FarmusThemeColor.white,
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

class EmojiInputFormatter extends TextInputFormatter {
  static final RegExp _emojiRegex = RegExp(
      r'[\u{1F600}-\u{1F64F}'
      r'\u{1F300}-\u{1F5FF}'
      r'\u{1F680}-\u{1F6FF}'
      r'\u{1F700}-\u{1F77F}'
      r'\u{1F780}-\u{1F7FF}'
      r'\u{1F800}-\u{1F8FF}'
      r'\u{1F900}-\u{1F9FF}'
      r'\u{1FA00}-\u{1FA6F}'
      r'\u{1FA70}-\u{1FAFF}'
      r'\u{2600}-\u{26FF}'
      r'\u{2700}-\u{27BF}'
      r'\u{E0020}-\u{E007F}'
      r'\u{FE00}-\u{FE0F}'
      r'\u{1F018}-\u{1F270}'
      r'\u{238C}-\u{2454}'
      r']+',
      unicode: true,
      dotAll: true);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final filteredText = newValue.text.replaceAll(_emojiRegex, '');
    return TextEditingValue(
      text: filteredText,
      selection: newValue.selection.copyWith(
        baseOffset: filteredText.length -
            (newValue.text.length - newValue.selection.baseOffset),
        extentOffset: filteredText.length -
            (newValue.text.length - newValue.selection.extentOffset),
      ),
    );
  }
}
