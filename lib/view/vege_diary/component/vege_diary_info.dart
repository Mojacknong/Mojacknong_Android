import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/home/my_veggie_profile.dart';
import 'package:farmus/model/my_vege/my_veggie_diary.dart';
import 'package:farmus/view/vege_diary/component/vege_diary_write_open_info.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDiaryInfo extends ConsumerWidget {
  final List<MyVeggieDiary> myVeggieDiaryList;
  final int selectId;

  const VegeDiaryInfo(
      {Key? key, required this.myVeggieDiaryList, required this.selectId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int writtenDiaryCount = myVeggieDiaryList.length;
    int publicDiaryCount =
        myVeggieDiaryList.where((diary) => diary.isOpen).length;
    AsyncValue<MyVeggieProfile> profile =
        ref.watch(myVeggieProfileProvider(selectId));

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
            Row(
              children: [
                Text(
                  myVeggieDiaryList.isNotEmpty ? profile.value!.nickname : "",
                  style: FarmusThemeTextStyle.darkSemiBold17,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "+${myVeggieDiaryList.isNotEmpty ? profile.value!.period : ""}일",
                  style: FarmusThemeTextStyle.gray2Medium15,
                )
              ],
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
                    VegeDiaryWriteOpenInfo(
                        type: '작성한 일기', count: writtenDiaryCount.toString()),
                    const VerticalDivider(
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    VegeDiaryWriteOpenInfo(
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
