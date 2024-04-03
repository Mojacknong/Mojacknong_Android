import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class MyPageSettingText extends StatefulWidget {
  final String text;
  final Function()? onPress;

  const MyPageSettingText({super.key, required this.text, this.onPress});

  @override
  State<MyPageSettingText> createState() => _MyPageSettingTextState();
}

class _MyPageSettingTextState extends State<MyPageSettingText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: widget.onPress ?? () {},
            child: Text(
              widget.text,
              style: FarmusThemeTextStyle.darkMedium16,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
