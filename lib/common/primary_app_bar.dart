import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;

  const PrimaryAppBar({super.key, this.leading, this.title, this.actions});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/image/ic_arrow_left.svg",
            height: 24,
            width: 24,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: title != null
            ? Text(
                title!,
                style: const TextStyle(),
              )
            : null,
        centerTitle: true,
        actions: actions,
        elevation: 0,
      ),
    );
  }

  @override
  get preferredSize => throw UnimplementedError();

}
