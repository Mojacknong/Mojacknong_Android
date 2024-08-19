import 'dart:io';

import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/image_picker/write_image_picker.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_bottom.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_state.dart';
import 'package:farmus/view_model/diary/post_diary_notifier.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/dialog/check_dialog.dart';
import '../../common/form/content_input_text_form.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../model/home/my_veggie_list_model.dart';
import '../../view_model/my_vege/notifier/my_veggie_list.dart';

class VegeDiaryWriteScreen extends ConsumerWidget {
  const VegeDiaryWriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);

    if (selectedVeggieId == null && veggieList.value?.isNotEmpty == true) {
      selectedVeggieId = veggieList.value!.first.myVeggieId;
    }

    var postNotifier = ref.watch(postDiaryNotifierProvider);

    bool enabled = postNotifier.value?.isComplete ?? false;
    var file = postNotifier.value?.file;
    var content = postNotifier.value?.content ?? '';
    var isOpen = ref.watch(toggleSwitchProvider);
    var state = postNotifier.value?.state ?? '';

    return Scaffold(
      appBar: DeleteAppBar(
        title: "일기 쓰기",
        actions: [
          PrimaryColorButton(
            enabled: enabled,
            borderRadius: 20,
            fontSize: 13,
            onPressed: () {
              ref
                  .read(postDiaryNotifierProvider.notifier)
                  .postDiary(File(file!.path), content, state, isOpen,
                      selectedVeggieId!)
                  .then((_) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    Future.delayed(const Duration(seconds: 2), () {
                      Navigator.of(context).pop();
                    });
                    return const CheckDialog(
                      text: "일기가 업로드 되었어요",
                    );
                  },
                );
              });
            },
            text: '완료',
            fontPadding: 0,
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48.0,
                      vertical: 8.0,
                    ),
                    child: WriteImagePicker(
                      imageProvider: postNotifier.value?.file,
                      updateImage: (value) => ref
                          .read(postDiaryNotifierProvider.notifier)
                          .updateImage(value),
                      deleteImage: (value) => ref
                          .read(postDiaryNotifierProvider.notifier)
                          .deleteImage(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ContentInputTextForm(
                      maxLength: 300,
                      nowContent: postNotifier.value?.content,
                      updateContent: (value) => ref
                          .read(postDiaryNotifierProvider.notifier)
                          .updateContent(value),
                    ),
                  ),
                  const VegeDiaryWriteState(),
                ],
              ),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: FarmusThemeColor.gray4,
                ),
              ),
              VegeDiaryWriteBottom()
            ],
          ),
        ],
      ),
    );
  }
}
