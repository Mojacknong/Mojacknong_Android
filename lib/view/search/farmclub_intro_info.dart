import 'package:farmus/view/my_farmclub/component/farmclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/farmus_theme_text_style.dart';

class FarmclubIntroInfo extends ConsumerWidget {
  const FarmclubIntroInfo(
      {super.key,
      required this.vege,
      required this.start,
      required this.nickname,
      required this.num,
      required this.total,
      required this.writing});

  final String vege;
  final String start;
  final String nickname;
  final String num;
  final String total;
  final String writing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FarmclubWidgetPic(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      nickname,
                      style: FarmusThemeTextStyle.darkSemiBold22,
                    ),
                    // const VerticalDivider(
                    //   width: 16,
                    //   thickness: 1,
                    //   color: FarmusThemeColor.gray4,
                    // ),
                    const Text(
                      "채소",
                      style: FarmusThemeTextStyle.gray1Medium13,
                    ),
                    const SizedBox(
                      width: 8,
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
                    start,
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
              const Row(
                children: [],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
