import 'package:flutter/cupertino.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class HomeAddSubTitle extends StatelessWidget {
  final String text;

  const HomeAddSubTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: FarmusThemeTextStyle.darkSemiBold17,
      ),
    );
  }
}
