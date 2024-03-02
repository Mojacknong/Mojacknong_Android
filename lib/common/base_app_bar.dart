import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;

  const BaseAppBar(
      {super.key, this.leading, this.title, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title != null
          ? Text(
              title!,
              style: FarmusThemeTextStyle.darkSemiBold16,
            )
          : null,
      actions: actions,
      centerTitle: true,
      backgroundColor: FarmusThemeColor.white,
      elevation: 0.0,
      bottomOpacity: 0.0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
