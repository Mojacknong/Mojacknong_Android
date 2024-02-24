import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'farmus_theme_data.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;

  const PrimaryAppBar({super.key, this.leading, this.title, this.actions});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/image/ic_arrow_left.svg",
            height: 24,
            width: 24,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: title != null
            ? Text(
                title!,
                style: const TextStyle(
                  color: FarmusThemeData.dark,
                  fontFamily: "Pretendard",
                  fontSize: 16,
                ),
              )
            : null,
        centerTitle: true,
        actions: actions,
        elevation: 0,
        backgroundColor: FarmusThemeData.white,
      ),
    );
  }
}
