import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/farmus_theme_color.dart';
import '../../../../common/theme/farmus_theme_text_style.dart';

class HomeVegiInfo extends ConsumerWidget {
  const HomeVegiInfo(
      {super.key,
      required this.vegi,
      required this.level,
      required this.period,
      required this.selected});

  final String vegi;
  final String level;
  final String period;
  final bool selected;

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
      color: selected ? FarmusThemeColor.background : null,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Container(
              width: 60,
              height: 60,
              decoration: ShapeDecoration(
                color: FarmusThemeColor.background2,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.60,
                    color: FarmusThemeColor.gray4,
                  ),
                  borderRadius: BorderRadius.circular(44),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      vegi,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
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
                    "재배 기간",
                    style: FarmusThemeTextStyle.gray2Medium13,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    period,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
