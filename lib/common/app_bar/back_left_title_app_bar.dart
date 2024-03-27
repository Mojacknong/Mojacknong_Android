import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackLeftTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const BackLeftTitleAppBar({super.key, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/image/ic_left.svg"),
      ),
      title: title,
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
