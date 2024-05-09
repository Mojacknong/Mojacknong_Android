import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_color.dart';

class RoutineAddButton extends ConsumerWidget {
  const RoutineAddButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: PrimaryButton(
        height: 50,
        enabled: true,
        textColor: FarmusThemeColor.gray2,
        backgroundColor: FarmusThemeColor.gray5,
        borderColor: FarmusThemeColor.white,
        onPressed: onPressed,
        buttonChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/image/ic_plus.svg',
              colorFilter: const ColorFilter.mode(
                FarmusThemeColor.gray2,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "루틴 추가",
              style: FarmusThemeTextStyle.gray2Medium15,
            ),
          ],
        ),
      ),
    );
  }
}
