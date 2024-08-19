import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/vege_diary/component/vege_diary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/app_bar/back_left_title_app_bar.dart';
import '../../common/content_empty.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import '../../model/diary/diary_check_model.dart';
import '../../model/diary/my_veggie_diary.dart';
import '../../view_model/diary/diary_check_notifier.dart';
import '../../view_model/diary/my_veggie_diary_notifier.dart';
import '../../view_model/home/home_provider.dart';
import '../vege_diary_write/vege_diary_write_screen.dart';
import 'component/vege_diary_info.dart';

class VegeDiaryScreen extends ConsumerWidget {
  const VegeDiaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);

    final AsyncValue<List<MyVeggieDiary>> myVeggieDiaryList =
        ref.watch(myVeggieDiaryNotifierProvider(selectedVeggieId));

    final AsyncValue<DiaryCheckModel> diaryCheck =
        ref.watch(diaryCheckModelProvider(selectedVeggieId));

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
                            : const SizedBox(
                                width: double.infinity,
                                child: ContentEmpty(
                                  text: '아직 작성한 성장 일기가 없어요',
                                  padding: 48.0,
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
          diaryCheck.when(
            data: (state) {
              return Column(
                children: [
                  Visibility(
                    visible: !state.state,
                    child: const Text(
                      '오늘의 일기를 이미 작성했어요',
                      style: FarmusThemeTextStyle.redMedium13,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: PrimaryColorButton(
                      enabled: state.state,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const VegeDiaryWriteScreen()),
                        );
                      },
                      buttonChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/image/ic_pen.svg',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "일기 쓰기",
                              style: FarmusThemeTextStyle.whiteSemiBold15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            loading: () => Container(),
            error: (error, stack) => Center(
              child: Text('Error: $error'),
            ),
          )
        ],
      ),
    );
  }
}
