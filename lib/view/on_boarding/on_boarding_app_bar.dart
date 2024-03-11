import 'package:farmus/common/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/farmus_theme_text_style.dart';

class OnBoardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String currentIndex;

  const OnBoardingAppBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/image/ic_close.svg")),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "$currentIndex/4",
            style: FarmusThemeTextStyle.green1Medium14,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
