import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';

import '../../../common/bouncing.dart';

class SelectBox extends StatelessWidget {
  final String title;
  final String content;

  const SelectBox({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bouncing(
      onPress: () {},
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: FarmusThemeColor.green3,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: FarmusThemeColor.gray4,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: FarmusThemeTextStyle.darkMedium17,
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: FarmusThemeTextStyle.gray1Medium13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
