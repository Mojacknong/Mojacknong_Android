import 'package:farmus/view_model/vegi_delete/vegi_delete_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/primary_text_form_field.dart';
import '../../../common/theme/farmus_theme_color.dart';

class ContentInputTextForm extends ConsumerWidget {
  const ContentInputTextForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nowLength = ref.watch(vegiDeleteSuccessProvider).content == null
        ? 0
        : ref.watch(vegiDeleteSuccessProvider).content?.length;

    return PrimaryTextFormField(
        maxLength: 50,
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
        onChanged: (value) {
          ref.read(vegiDeleteSuccessProvider.notifier).updateContent(value);
        },
        suffix: Column(
          children: [
            Text("$nowLength /50"),
          ],
        ));
  }
}
