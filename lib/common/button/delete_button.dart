import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton({
    super.key,
    required this.enabled,
    required this.onPressed,
  });

  final bool enabled;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: PrimaryButton(
        height: 50,
        enabled: enabled,
        textColor: enabled ? FarmusThemeColor.gray3 : FarmusThemeColor.red,
        backgroundColor: FarmusThemeColor.gray4,
        borderColor: FarmusThemeColor.white,
        onPressed: onPressed,
        buttonChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "채소 삭제",
              style: enabled
                  ? FarmusThemeTextStyle.redSemiBold15
                  : FarmusThemeTextStyle.gray3SemiBold15,
            ),
          ],
        ),
      ),
    );
  }
}
