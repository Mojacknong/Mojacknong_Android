import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class TwoInfoBox extends ConsumerWidget {
  const TwoInfoBox({
    super.key,
    required this.type,
    required this.count,
  });

  final String type;
  final String count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String iconPath = type == '성장 일기' || type == '작성한 일기'
        ? 'assets/image/ic_diary_write.svg'
        : type == '미션 인증'
        ? 'assets/image/ic_mission_count.svg'
        : 'assets/image/ic_diary_open_true.svg';

    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(iconPath),
            const SizedBox(
              width: 6,
            ),
            Text(
              type,
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
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
