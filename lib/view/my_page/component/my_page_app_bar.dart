import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FarmusLogoAppBar(
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_settings.svg',
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
