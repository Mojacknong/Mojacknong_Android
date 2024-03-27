import 'package:flutter/cupertino.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class HomeSubTitle extends StatelessWidget {
  final String title;

  const HomeSubTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: FarmusThemeTextStyle.gray1SemiBold17,
      ),
    );
  }
}
