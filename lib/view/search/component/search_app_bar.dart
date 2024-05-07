import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
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
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_alert_circle.svg',
              colorFilter: const ColorFilter.mode(
                  FarmusThemeColor.black, BlendMode.srcIn),
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_search_glass.svg',
            ),
            onPressed: () {},
          ),
        ],
        leadingWidth: 150,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}