import 'package:farmus/view/my_page/my_farmclub/component/farmclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/farmus_theme_color.dart';
import '../../../../common/theme/farmus_theme_text_style.dart';

class FarmclubInfo extends ConsumerWidget {
  const FarmclubInfo(
      {super.key,
      required this.vege,
      required this.level,
      required this.period,
      required this.nickname,
      required this.num,
      required this.total});

  final String vege;
  final String level;
  final String period;
  final String nickname;
  final String num;
  final String total;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color? levelColor;

    switch (level) {
      case "초급":
        levelColor = FarmusThemeColor.blue;
      case "중급":
        levelColor = FarmusThemeColor.yellow;
      case "고급":
        levelColor = FarmusThemeColor.red;
    }

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FarmClubWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      vege,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 16,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    Text(
                      nickname,
                      style: FarmusThemeTextStyle.gray1Medium15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "+",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  Text(
                    period,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  const Text(
                    "일",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    num,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  const Text(
                    "/",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  Text(
                    total,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                  const Text(
                    "명",
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: ShapeDecoration(
                      color: levelColor,
                      shape: const OvalBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    level,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
