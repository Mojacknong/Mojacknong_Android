import 'package:flutter/cupertino.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class HomeNoneContent extends StatelessWidget {
  final String text;

  const HomeNoneContent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: FarmusThemeTextStyle.darkMedium13,
      ),
    );
  }
}
