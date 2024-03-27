import 'dart:ui';

import 'package:flutter/material.dart' hide Size;

import '../base/base_app_bar.dart';
import '../theme/farmus_theme_color.dart';
import '../theme/farmus_theme_text_style.dart';

class PrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget, BaseAppBar {
  @override
  final Widget? leading;
  @override
  final double? leadingWidth;
  @override
  final String? title;
  @override
  final List<Widget>? actions;
  @override
  final bool? centerTitle;

  const PrimaryAppBar(
      {super.key,
      this.leading,
      this.title,
      this.actions,
      this.leadingWidth,
      this.centerTitle});

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
      centerTitle: centerTitle,
      titleSpacing: 0,
      backgroundColor: FarmusThemeColor.white,
      elevation: 0.0,
      bottomOpacity: 0.0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
