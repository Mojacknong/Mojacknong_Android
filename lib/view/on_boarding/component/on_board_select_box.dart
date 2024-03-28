import 'package:flutter/cupertino.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class OnBoardSelectBox extends StatelessWidget {
  final String title;
  final String content;

  const OnBoardSelectBox({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: FarmusThemeTextStyle.darkMedium17,
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: FarmusThemeTextStyle.gray1Medium13,
        ),
      ],
    );
  }
}
