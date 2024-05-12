import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubStepTip extends ConsumerWidget {
  const FarmclubStepTip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/image/ic_farmclub_mark.svg',
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              '도움말',
              style: FarmusThemeTextStyle.gray2SemiBold13,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/image/ic_right.svg',
                width: 19,
                height: 19,
                colorFilter: const ColorFilter.mode(
                  FarmusThemeColor.gray2,
                  BlendMode.srcIn,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          '상추 씨앗과 상토, 재배 용기를 준비해주세요',
          style: FarmusThemeTextStyle.darkMedium15,
        )
      ],
    );
  }
}
