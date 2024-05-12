import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubProfile extends ConsumerWidget {
  const FarmclubProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/image/image_farmclub_profile_background.png',
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: const BoxDecoration(
                    color: FarmusThemeColor.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: FarmusThemeColor.gray7,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            SvgPicture.asset('assets/image/ic_farmclub_mark.svg'),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '상추는 현실이 되다',
                style: FarmusThemeTextStyle.darkSemiBold20,
              ),
              Text(
                '가입한 지 +12일',
                style: FarmusThemeTextStyle.gray1Medium13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
