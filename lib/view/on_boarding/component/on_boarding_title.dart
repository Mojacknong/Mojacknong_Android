import 'package:flutter/cupertino.dart';

import '../../../common/farmus_theme_text_style.dart';

class OnBoardingTitle extends StatelessWidget {
  final String mainText;
  final String subText;

  const OnBoardingTitle({
    Key? key,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          mainText,
          style: FarmusThemeTextStyle.darkSemiBold20,
        ),
        const SizedBox(height: 4),
        Text(
          subText,
          style: FarmusThemeTextStyle.gray2Medium14,
        ),
      ],
    );
  }
}
