import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';

import '../../../common/bouncing.dart';

class SelectBox extends StatelessWidget {
  final String title;
  final String content;
  final Function() selectBox;
  final Color? backgroundColor;
  final Color borderColor;

  const SelectBox({
    Key? key,
    required this.title,
    required this.content,
    required this.selectBox,
    this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bouncing(
      onPress: () {},
      child: GestureDetector(
        onTap: selectBox,
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: borderColor,
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
