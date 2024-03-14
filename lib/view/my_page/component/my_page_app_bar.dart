import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/image/logo_farmus.svg',
            ),
          ],
        ),
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
