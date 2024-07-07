import 'package:farmus/view/vege_diary/component/vege_diary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/back_left_title_app_bar.dart';
import '../../common/button/diary_button.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import '../../model/home/my_veggie_list_model.dart';
import '../../model/my_vege/my_veggie_diary.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/my_vege/notifier/my_veggie_diary.dart';
import '../../view_model/my_vege/notifier/my_veggie_list.dart';
import 'component/vege_diary_info.dart';

class VegeDiaryScreen extends ConsumerWidget {
  const VegeDiaryScreen({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);

    if (selectedVeggieId == null && veggieList.value?.isNotEmpty == true) {
      selectedVeggieId = veggieList.value!.first.myVeggieId;
    }

    final AsyncValue<List<MyVeggieDiary>> myVeggieDiaryList =
        ref.watch(myVeggieDiaryProvider(selectedVeggieId!));

    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "성장일기",
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VegeDiaryInfo(
                      myVeggieDiaryList: myVeggieDiaryList.value ?? [],
                      selectId: selectedVeggieId,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Text(
                        '최신순',
                        style: FarmusThemeTextStyle.gray2Medium13,
                      ),
                    ),
                    myVeggieDiaryList.when(
                      data: (diaries) {
                        return Column(
                          children: diaries.map((diary) {
                            return VegeDiaryWidget(
                              diary: diary,
                            );
                          }).toList(),
                        );
                      },
                      loading: () => const CircularProgressIndicator(),
                      error: (error, stack) => Text('Error: $error'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: DiaryButton(),
          ),
        ],
      ),
    );
  }
}
