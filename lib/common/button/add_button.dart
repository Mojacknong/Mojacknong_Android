import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class AddButton extends ConsumerWidget {
  const AddButton({
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
        textColor: FarmusThemeColor.white,
        backgroundColor: FarmusThemeColor.primary,
        borderColor: FarmusThemeColor.white,
        onPressed: onPressed,
        buttonChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/ic_plus.png',
              width: 12,
              height: 12,
            ),
            const SizedBox(width: 6),
            const Text(
              "추가",
              style: FarmusThemeTextStyle.whiteSemiBold15,
            ),
          ],
        ),
      ),
    );
  }
}
