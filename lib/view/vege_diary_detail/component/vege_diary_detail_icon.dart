import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryDetailIcon extends ConsumerWidget {
  const VegeDiaryDetailIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/image/ic_heart.svg'),
          ),
        ),
        const Text(
          '2',
          style: FarmusThemeTextStyle.gray2Medium13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 4.0),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
                'assets/image/ic_message_typing.svg'),
          ),
        ),
        const Text(
          '2',
          style: FarmusThemeTextStyle.gray2Medium13,
        ),
      ],
    );
  }
}