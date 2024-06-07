import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/view/vege_diary_write/vege_diary_write_screen.dart';
import 'package:farmus/view_model/vege_diary_write/vege_diary_write_provider.dart';
import 'package:flutter/material.dart';
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
      onPressed: () {
        ref.read(vegeDiaryWriteProvider.notifier).reset();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VegeDiaryWriteScreen()),
        );
      },
      buttonChild: Padding(
        padding: const EdgeInsets.all(16.0),
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
