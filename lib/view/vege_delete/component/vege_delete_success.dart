import 'package:farmus/view/vege_delete/component/vege_success_image.dart';
import 'package:farmus/view_model/vege_delete/notifier/vege_delete_success_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/form/content_input_text_form.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDeleteSuccess extends ConsumerStatefulWidget {
  const VegeDeleteSuccess({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VegeDeleteSuccessState();
}

class _VegeDeleteSuccessState extends ConsumerState<VegeDeleteSuccess> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          '축하해요!\n홈파밍 결과를 기록해 주세요.',
          style: FarmusThemeTextStyle.darkSemiBold20,
        ),
        const SizedBox(
          height: 16,
        ),
        const VegeSuccessImage(),
        const SizedBox(
          height: 16,
        ),
        ContentInputTextForm(
          maxLength: 50,
          nowContent: ref.watch(vegeDeleteSuccessNotifierProvider).value!.content,
          updateContent: (value) => ref
              .watch(vegeDeleteSuccessNotifierProvider.notifier)
              .updateContent(value!),
        ),
      ],
    );
  }
}
