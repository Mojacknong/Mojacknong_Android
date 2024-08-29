import 'dart:io';

import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/view/mission_write/component/mission_step_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/dialog/check_dialog.dart';
import '../../common/form/content_input_text_form.dart';
import '../../common/image_picker/write_image_picker.dart';
import '../../model/my_farmclub/my_farmclub_model.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/mission_write/notifier/post_mission_notifier.dart';
import '../../view_model/my_farmclub/my_farmclub_notifier.dart';

class MissionWriteScreen extends ConsumerWidget {
  const MissionWriteScreen({super.key, required this.step, this.farmClubId});

  final StepModel step;
  final int? farmClubId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var postNotifier = ref.watch(postMissionNotifierProvider);

    var selectedVeggieId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyFarmclubModel>> farmclubList =
    ref.watch(myFarmclubModelProvider);
    if (selectedVeggieId == null && farmclubList.value?.isNotEmpty == true) {
      selectedVeggieId = farmclubList.value!.first.farmClubId;
    }
    bool enabled = postNotifier.value?.isComplete ?? false;
    var file = postNotifier.value?.file;
    var content = postNotifier.value?.content ?? '';
    return Scaffold(
      appBar: DeleteAppBar(
        title: '인증하기',
        actions: [
          PrimaryColorButton(
            enabled: enabled,
            borderRadius: 20,
            fontSize: 13,
            onPressed: () {
              ref
                  .read(postMissionNotifierProvider.notifier)
                  .postMission(File(file!.path), content, farmClubId!,context
                  )
                  .then((_) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    Future.delayed(const Duration(seconds: 2), () {
                      Navigator.of(context).pop();
                    });
                    return  CheckDialog(
                      text: "Step ${step.stepNum } 미션을 인증했어요",
                    );
                  },
                );
              });
            },
            text: '완료',
            fontPadding: 0,
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MissionStepInfo(
                step: step,
                isButton: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48.0,
                vertical: 16.0,
              ),
              child: WriteImagePicker(
                imageProvider: postNotifier.value?.file,
                updateImage: (value) =>
                    ref.read(postMissionNotifierProvider.notifier).updateImage(value),
                deleteImage: (value) =>
                    ref.read(postMissionNotifierProvider.notifier).deleteImage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ContentInputTextForm(
                maxLength: 300,
                nowContent: postNotifier.value?.content,
                updateContent: (value) => ref
                    .watch(postMissionNotifierProvider.notifier)
                    .updateContent(value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
