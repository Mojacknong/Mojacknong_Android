import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_text_style.dart';
import 'primary_app_bar.dart';

class FarmusLogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FarmusLogoAppBar({
    super.key,
    this.actions,
  });

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SvgPicture.asset(
              'assets/image/logo_farmus.svg',
            ),
          ),
        ],
      ),
      actions: actions,
      leadingWidth: 150,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
