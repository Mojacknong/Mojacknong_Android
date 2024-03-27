import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FarmClubAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FarmClubAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_arrow_left.svg',
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Expanded(
              child: Text(
            "팜클럽 히스토리",
            style: TextStyle(color: FarmusThemeColor.dark, fontSize: 16),
          ))
        ],
      ),
      leadingWidth: 180,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
