import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class HomeSubTitle extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool visible;

  const HomeSubTitle(
      {super.key,
      required this.title,
      required this.onTap,
      required this.visible});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: FarmusThemeTextStyle.gray1SemiBold17,
        ),
        Visibility(
          visible: visible,
          child: GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset('assets/image/ic_right.svg'),
          ),
        ),
      ],
    );
  }
}
