import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/home/my_veggie_profile.dart';
import 'package:farmus/model/diary/my_veggie_diary.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/two_info_box.dart';

class VegeDiaryInfo extends ConsumerWidget {
  final List<MyVeggieDiary> myVeggieDiaryList;
  final int? selectedVeggieId;

  const VegeDiaryInfo(
      {Key? key, required this.myVeggieDiaryList, this.selectedVeggieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int writtenDiaryCount = myVeggieDiaryList.length;
    int publicDiaryCount =
        myVeggieDiaryList.where((diary) => diary.isOpen).length;
    AsyncValue<MyVeggieProfile> profile =
        ref.watch(myVeggieProfileProvider(selectedVeggieId));

    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            profile.when(
              data: (profile) {
                return Row(
                  children: [
                    Text(
                      profile.nickname,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "+${profile.period}일",
                      style: FarmusThemeTextStyle.gray2Medium15,
                    )
                  ],
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stack) => Center(
                child: Text('Error: $error'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: FarmusThemeColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TwoInfoBox(
                        type: '작성한 일기', count: writtenDiaryCount.toString()),
                    const VerticalDivider(
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    TwoInfoBox(
                        type: '공개한 일기', count: publicDiaryCount.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
