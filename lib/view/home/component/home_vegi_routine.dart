
import 'package:farmus/view/home/component/vegi_routine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class HomeVegiRoutine extends ConsumerWidget {
  const HomeVegiRoutine({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Text(
              "1개",
              style: FarmusThemeTextStyle.redSemiBold13,
            ),
            Text(
              "의 루틴이 남았어요",
              style: FarmusThemeTextStyle.gray1Medium13,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        VegiRoutine(routine: '물 갈아 주기', day: '4일 1회',),
        Divider(
          height: 1,
          color: FarmusThemeColor.gray5,
        ),
        VegiRoutine(routine: '물 주기', day: '3일 1회',),
      ],
    );
  }
}
