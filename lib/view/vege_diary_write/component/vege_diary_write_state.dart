import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryWriteState extends ConsumerWidget {
  const VegeDiaryWriteState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              color: FarmusThemeColor.gray5,
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
                      enabled: true,
                      text: "나쁨",
                      onPressed: () {},
                    ),
                    HomeMyVegeButton(
                      enabled: true,
                      text: "보통",
                      onPressed: () {},
                    ),
                    HomeMyVegeButton(
                      enabled: true,
                      text: "좋음",
                      onPressed: () {},
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
