import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class MyPageFeedTime extends StatelessWidget {
  final String postTime;
  const MyPageFeedTime({
    super.key,
    required this.postTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            postTime,
            style: FarmusThemeTextStyle.gray2Medium13,
          ),
        ],
      ),
    );
  }
}
