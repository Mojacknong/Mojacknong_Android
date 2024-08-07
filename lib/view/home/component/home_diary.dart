import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/home/notifier/veggie_diary_one_notifier.dart';
import '../../vege_diary/vege_diary_screen.dart';
import '../../vege_diary_write/vege_diary_write_screen.dart';
import 'none/home_none_container.dart';

class HomeDiary extends ConsumerWidget {
  const HomeDiary({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    final diaryOne = ref.watch(veggieDiaryOneModelProvider(selectedVegeId));

    return diaryOne.when(
      data: (diary) {
        if (diary == null) {
          return HomeNoneContainer(
            title: '오늘 작성한 일기가 없어요',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const VegeDiaryWriteScreen(),
                ),
              );
            },
            buttonText: '성장일기 쓰기',
          );
        } else {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VegeDiaryScreen()),
              );
            },
            child: Row(
              children: [
                FarmusPictureFix(
                  size: 64,
                  image: diary.image,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        diary.date!,
                        style: FarmusThemeTextStyle.gray1Medium13,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        diary.content!,
                        style: FarmusThemeTextStyle.darkMedium15,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
