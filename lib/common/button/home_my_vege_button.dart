import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class HomeMyVegeButton extends ConsumerWidget {
  const HomeMyVegeButton(
      {super.key,
      required this.enabled,
      required this.text,
      required this.onPressed,
      required this.fontPadding,
      required this.padding});

  final bool enabled;

  final void Function()? onPressed;

  final String text;

  final double fontPadding;
  final double padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      text: text,
      enabled: true,
      textColor: enabled ? FarmusThemeColor.green1 : FarmusThemeColor.gray3,
      backgroundColor:
          enabled ? FarmusThemeColor.greenLight3 : FarmusThemeColor.background,
      borderColor:
          enabled ? FarmusThemeColor.green1 : FarmusThemeColor.background,
      borderRadius: 25.0,
      onPressed: onPressed,
      fontPadding: fontPadding,
      padding: EdgeInsets.symmetric(horizontal: padding),
    );
  }
}
