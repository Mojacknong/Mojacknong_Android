import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';
import 'primary_text_form_field.dart';

class ContentInputTextForm extends ConsumerWidget {
  const ContentInputTextForm(
      {super.key,
        required this.maxLength,
        required this.nowContent,
        this.updateContent});

  final int maxLength;
  final String? nowContent;
  final Function(String?)? updateContent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nowLength = nowContent == null ? 0 : nowContent?.length;

    return PrimaryTextFormField(
        maxLength: maxLength,
        minLines: 5,
        maxLines: 5,
        hintText: '내용을 입력해주세요',
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: FarmusThemeColor.gray4,
          ),
        ),
        errorStyle: const TextStyle(
          color: FarmusThemeColor.red,
        ),
        onChanged: (value) => updateContent?.call(value),
        suffix: Column(
          children: [
            Text("$nowLength /$maxLength"),
          ],
        ));
  }
}
