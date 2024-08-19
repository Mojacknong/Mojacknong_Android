import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../tip/tip_screen.dart';

class FarmclubStepTip extends ConsumerWidget {
  final String tip;

  const FarmclubStepTip({super.key, required this.tip});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TipScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: FarmusThemeColor.gray4),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Row(
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
                  SvgPicture.asset(
                    'assets/image/ic_right.svg',
                    width: 19,
                    height: 19,
                    colorFilter: const ColorFilter.mode(
                      FarmusThemeColor.gray2,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              tip,
              style: FarmusThemeTextStyle.darkMedium15,
            )
          ],
        ),
      ),
    );
  }
}
