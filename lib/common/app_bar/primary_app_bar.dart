import 'dart:ui';

import 'package:flutter/material.dart' hide Size;

import '../base/base_app_bar.dart';
import '../theme/farmus_theme_color.dart';
import '../theme/farmus_theme_text_style.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget, BaseAppBar {
  @override
  final Widget? leading;
  @override
  final double? leadingWidth;
  @override
  final String? title;
  @override
  final List<Widget>? actions;

  const PrimaryAppBar({super.key, this.leading, this.title, this.actions, this.leadingWidth});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      leadingWidth: leadingWidth,
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
