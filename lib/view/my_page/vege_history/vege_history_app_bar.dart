import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VegeHistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VegeHistoryAppBar({Key? key}) : super(key: key);

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
            "채소 히스토리",
            style: TextStyle(color: FarmusThemeColor.dark, fontSize: 16),
          ))
        ],
      ),
      leadingWidth: 150,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
