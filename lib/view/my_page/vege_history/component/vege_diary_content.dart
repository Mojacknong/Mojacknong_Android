import 'package:farmus/common/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class VegeDiaryContent extends StatelessWidget {
  // final String title;
  final String content;

  const VegeDiaryContent({
    super.key,
    // required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: FarmusThemeColor.dark,
                fontFamily: "Pretendard",
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
