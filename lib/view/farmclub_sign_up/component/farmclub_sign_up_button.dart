import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpButton extends ConsumerWidget {
  const FarmclubSignUpButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: PrimaryButton(
        height: 50,
        enabled: true,
        textColor: FarmusThemeColor.white,
        backgroundColor: FarmusThemeColor.primary,
        borderColor: FarmusThemeColor.white,
        onPressed: onPressed,
        buttonChild: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "팜클럽 가입하기",
              style: FarmusThemeTextStyle.whiteSemiBold15,
            ),
          ],
        ),
      ),
    );
  }
}
