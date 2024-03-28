import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(
        height: 1,
        color: FarmusThemeColor.gray5,
      ),
    );
  }
}
