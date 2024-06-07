import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_text_style.dart';
import 'primary_app_bar.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key, required this.veggieCount});

  final String veggieCount;

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            const Text(
              '내 텃밭 ',
              style: FarmusThemeTextStyle.darkSemiBold20,
            ),
            Text(
              veggieCount,
              style: FarmusThemeTextStyle.gray2SemiBold20,
            ),
          ],
        ),
      ),
      leadingWidth: 150,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/image/ic_bell.svg"),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
