import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_color.dart';
import '../theme/farmus_theme_text_style.dart';

class DiaryButton extends ConsumerWidget {
  const DiaryButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      enabled: true,
      textColor: FarmusThemeColor.white,
      backgroundColor: FarmusThemeColor.primary,
      borderColor: FarmusThemeColor.white,
      onPressed: () {},
      buttonChild: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/image/ic_pen.svg',
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            const Text(
              "일기 쓰기",
              style: FarmusThemeTextStyle.whiteSemiBold15,
            ),
          ],
        ),
      ),
    );
  }
}
