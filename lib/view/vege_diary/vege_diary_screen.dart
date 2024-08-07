import 'package:farmus/view/vege_diary/component/vege_diary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/back_left_title_app_bar.dart';
import '../../common/button/diary_button.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import '../../model/diary/my_veggie_diary.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/diary/my_veggie_diary_notifier.dart';
import 'component/vege_diary_info.dart';

class VegeDiaryScreen extends ConsumerWidget {
  const VegeDiaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);

    final AsyncValue<List<MyVeggieDiary>> myVeggieDiaryList =
        ref.watch(myVeggieDiaryNotifierProvider(selectedVeggieId));

    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: '성장 일기',
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
                      selectedVeggieId: selectedVeggieId,
                    ),
                    myVeggieDiaryList.when(
                      data: (diaries) {
                        return diaries.isNotEmpty
                            ? Column(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 24.0),
                                    child: Text(
                                      '최신순',
                                      style: FarmusThemeTextStyle.gray2Medium13,
                                    ),
                                  ),
                                  Column(
                                    children: diaries.map((diary) {
                                      return VegeDiaryWidget(
                                        diary: diary,
                                      );
                                    }).toList(),
                                  ),
                                ],
                              )
                            : const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 24.0),
                                  child: Text(
                                    '아직 작성한 성장 일기가 없어요',
                                    style: FarmusThemeTextStyle.gray2Medium13,
                                  ),
                                ),
                              );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (error, stack) => Center(
                        child: Text('Error: $error'),
                      ),
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
