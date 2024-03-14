import 'package:farmus/common/base/base_app_bar.dart';
import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget, BaseAppBar {
  @override
  final Widget? leading;
  final double? leadingWidth;
  @override
  final String? title;
  @override
  final List<Widget>? actions;

  const PrimaryAppBar(
      {super.key, this.leading, this.leadingWidth, this.title, this.actions});

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
