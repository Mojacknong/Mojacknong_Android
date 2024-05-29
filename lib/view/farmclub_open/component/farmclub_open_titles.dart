import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class FarmclubOpenTitles extends StatelessWidget {
  const FarmclubOpenTitles({Key? key, required this.text, this.style})
      : super(key: key);

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: style ?? FarmusThemeTextStyle.darkSemiBold17,
          ),
        ],
      ),
    );
  }
}
