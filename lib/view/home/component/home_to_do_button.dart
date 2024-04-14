import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class HomeToDoButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;

  const HomeToDoButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: ShapeDecoration(
            color: enabled ? FarmusThemeColor.white : FarmusThemeColor.gray5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Text(
            text,
            style: enabled
                ? FarmusThemeTextStyle.dark2SemiBold15
                : FarmusThemeTextStyle.gray3SemiBold15,
          ),
        ),
      ),
    );
  }
}
