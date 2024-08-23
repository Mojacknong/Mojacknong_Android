import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubSuccessBox extends ConsumerWidget {
  const FarmclubSuccessBox(
      {super.key, required this.type, required this.count,});

  final String type;
  final String count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              type == '성장 일기'
                  ? 'assets/image/ic_diary_count.svg'
                  : 'assets/image/ic_mission_count.svg',
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              type,
              style: FarmusThemeTextStyle.gray2Medium13,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          count,
          style: FarmusThemeTextStyle.darkSemiBold21,
        ),
      ],
    );
  }
}
