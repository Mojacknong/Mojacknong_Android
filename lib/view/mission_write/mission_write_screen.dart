import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/mission_write/component/mission_step_info.dart';
import 'package:farmus/view_model/mission_write/mission_write_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/dialog/check_dialog.dart';
import '../../common/form/content_input_text_form.dart';
import '../../common/image_picker/write_image_picker.dart';

class MissionWriteScreen extends ConsumerWidget {
  const MissionWriteScreen({super.key, required this.stepNum});

  final int stepNum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool enabled = ref.watch(missionWriteProvider).isComplete;

    return Scaffold(
      appBar: DeleteAppBar(
        title: '인증하기',
        actions: [
          PrimaryColorButton(
            text: '완료',
            onPressed: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.of(context).pop();
                  });
                  return CheckDialog(
                    text: "Step $stepNum 미션을 인증했어요",
                  );
                },
              );
            },
            enabled: enabled,
            borderRadius: 20,
            fontSize: 13,
            fontPadding: 0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MissionStepInfo(
                stepNum: stepNum,
                isButton: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48.0,
                vertical: 16.0,
              ),
              child: WriteImagePicker(
                imageProvider: ref.watch(missionWriteProvider).image,
                updateImage: (value) =>
                    ref.read(missionWriteProvider.notifier).updateImage(value),
                deleteImage: (value) =>
                    ref.read(missionWriteProvider.notifier).deleteImage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ContentInputTextForm(
                maxLength: 300,
                nowContent: ref.watch(missionWriteProvider).content,
                updateContent: (value) => ref
                    .watch(missionWriteProvider.notifier)
                    .updateContent(value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
