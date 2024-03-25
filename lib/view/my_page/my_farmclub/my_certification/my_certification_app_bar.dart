import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCertificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MyCertificationAppBar({Key? key}) : super(key: key);

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
            "나의 인증",
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
