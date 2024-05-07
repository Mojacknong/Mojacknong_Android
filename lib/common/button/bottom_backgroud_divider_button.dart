import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_color.dart';

class BottomBackgroundDividerButton extends ConsumerWidget {
  const BottomBackgroundDividerButton({
    super.key,
    required this.button
  });

  final Widget button;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Divider(
          height: 1,
          color: FarmusThemeColor.gray5,
        ),
        button
      ],
    );
  }
}
