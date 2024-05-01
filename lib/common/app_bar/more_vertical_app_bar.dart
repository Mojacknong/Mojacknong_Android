import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreVerticalAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MoreVerticalAppBar({
    super.key,
    this.actions,
    this.title,
  });

  final String? title;
  final List<Widget>? actions;

  @override
  State<MoreVerticalAppBar> createState() => _MoreVerticalAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MoreVerticalAppBarState extends State<MoreVerticalAppBar> {
  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/image/ic_close.svg"),
      ),
      title: widget.title,
      centerTitle: false,
      actions: widget.actions,
    );
  }
}
