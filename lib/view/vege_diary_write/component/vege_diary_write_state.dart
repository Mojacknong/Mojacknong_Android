import 'package:farmus/view_model/vege_diary_write/vege_diary_write_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryWriteState extends ConsumerWidget {
  const VegeDiaryWriteState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notifier = ref.read(vegeDiaryWriteProvider.notifier);
    var vegeState = ref.watch(vegeDiaryWriteProvider).vegeState;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Text(
            '상태',
            style: FarmusThemeTextStyle.gray1Medium13,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: FarmusThemeColor.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeMyVegeButton(
                      enabled: vegeState == 'bad',
                      text: "나쁨",
                      onPressed: () {
                        notifier.updateVegeState('bad');
                      },
                    ),
                    HomeMyVegeButton(
                      enabled: vegeState == 'normal',
                      text: "보통",
                      onPressed: () {
                        notifier.updateVegeState('normal');
                      },
                    ),
                    HomeMyVegeButton(
                      enabled: vegeState == 'good',
                      text: "좋음",
                      onPressed: () {
                        notifier.updateVegeState('good');
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
