import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class PrimaryColorButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;

  const PrimaryColorButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PrimaryButton(
        text: text,
        onPressed: enabled ? onPressed : null,
        enabled: enabled,
        textColor: enabled ? FarmusThemeColor.white : FarmusThemeColor.gray3,
        backgroundColor:
            enabled ? FarmusThemeColor.primary : FarmusThemeColor.gray4,
        borderColor: FarmusThemeColor.white,
        fontSize: 15,
      ),
    );
  }
}
