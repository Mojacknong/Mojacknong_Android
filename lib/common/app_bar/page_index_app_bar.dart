import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_text_style.dart';

class PageIndexAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String currentIndex;
  final String maxIndex;

  const PageIndexAppBar(
      {super.key, required this.currentIndex, required this.maxIndex});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_close.svg")),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "$currentIndex/$maxIndex",
            style: FarmusThemeTextStyle.green1Medium14,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
