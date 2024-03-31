import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class MyPageFeedPicture extends StatelessWidget {
  const MyPageFeedPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: double.infinity,
        height: 248,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: FarmusThemeColor.background,
        ),
      ),
    );
  }
}