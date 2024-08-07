import 'dart:io';

import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/image_picker/write_image_picker.dart';
import 'package:farmus/model/home/diary_write_model.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_bottom.dart';
import 'package:farmus/view/vege_diary_write/component/vege_diary_write_state.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:farmus/view_model/diary/my_veggie_diary_notifier.dart';
import 'package:farmus/view_model/vege_diary_write/notifier/post_diary_notifier.dart';
import 'package:farmus/view_model/vege_diary_write/vege_diary_write_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/dialog/check_dialog.dart';
import '../../common/form/content_input_text_form.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../model/home/my_veggie_list_model.dart';
import '../../view_model/my_vege/notifier/my_veggie_list.dart';
import '../../view_model/routine/routine_provider.dart';
import '../main/main_screen.dart';

class VegeDiaryWriteScreen extends ConsumerWidget {
  const VegeDiaryWriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);

    if (selectedVeggieId == null && veggieList.value?.isNotEmpty == true) {
      selectedVeggieId = veggieList.value!.first.myVeggieId;
    }

    bool enabled = ref.watch(vegeDiaryWriteProvider).isComplete;

    var file = ref.watch(vegeDiaryWriteProvider).image?.path ?? '';
    var content = ref.watch(vegeDiaryWriteProvider).content ?? '';
    var isOpen = ref.watch(routineCycleSwitchProvider);
    var state = ref.watch(vegeDiaryWriteProvider).vegeState ?? '';

    return Scaffold(
      appBar: DeleteAppBar(
        title: "일기 쓰기",
        actions: [
          PrimaryColorButton(
            enabled: enabled,
            borderRadius: 20,
            fontSize: 13,
            onPressed: () {
              Navigator.pop(context);
              ref
                  .read(postDiaryNotifierProvider.notifier)
                  .postDiary(DiaryWriteModel(
                      file: File(file),
                      content: content,
                      isOpen: isOpen,
                      state: state,
                      myVeggieId: selectedVeggieId ?? -1))
                  .then((_) {
                ref.invalidate(
                    (myVeggieDiaryNotifierProvider(selectedVeggieId!)));
                ref.read((myVeggieDiaryNotifierProvider(selectedVeggieId)));
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainScreen(selectedIndex: 0);
                    },
                  ),
                  (route) => false,
                );
              });
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
                      imageProvider: ref.watch(vegeDiaryWriteProvider).image,
                      updateImage: (value) => ref
                          .read(vegeDiaryWriteProvider.notifier)
                          .updateImage(value),
                      deleteImage: (value) => ref
                          .read(vegeDiaryWriteProvider.notifier)
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
                      nowContent: ref.watch(vegeDiaryWriteProvider).content,
                      updateContent: (value) => ref
                          .read(vegeDiaryWriteProvider.notifier)
                          .updateContent(value ?? ''),
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
