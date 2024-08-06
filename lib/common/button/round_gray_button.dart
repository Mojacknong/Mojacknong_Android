import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';
import '../theme/farmus_theme_text_style.dart';

class RoundGrayButton extends ConsumerWidget {
  const RoundGrayButton(
      {super.key,
      required this.onTap,
      required this.isButton,
      required this.text});

  final Function() onTap;
  final bool isButton;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
        visible: isButton,
        child: PrimaryButton(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          borderRadius: 30,
          backgroundColor: FarmusThemeColor.gray1,
          buttonChild: Text(
            text,
            style: FarmusThemeTextStyle.whiteSemiBold15,
          ),
          enabled: true,
          textColor: FarmusThemeColor.white,
          borderColor: FarmusThemeColor.background,
        ));
  }
}
