import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class AboutFarmclubTextFirst extends StatelessWidget {
  const AboutFarmclubTextFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 8,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '원하는 팜클럽이 없다면\n',
                        style: FarmusThemeTextStyle.whiteMedium17),
                    TextSpan(
                        text: '직접 개설하기!',
                        style: FarmusThemeTextStyle.green6Medium17),
                  ],
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/image/about_farmclub_plus.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
