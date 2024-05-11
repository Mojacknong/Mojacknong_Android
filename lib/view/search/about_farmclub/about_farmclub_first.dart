import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/about_farmclub/about_farmclub_widget.dart';
import 'package:flutter/material.dart';

class AboutFarmclubFirst extends StatelessWidget {
  const AboutFarmclubFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutFarmclubWidget(
      dialogs: [
        Dialog(
          insetPadding: const EdgeInsets.fromLTRB(22, 0, 22, 16),
          child: Image.asset('assets/image/img_about_farmclub_first.png'),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                width: 12,
              ),
              Image.asset(
                'assets/image/img_about_farmclub_plus.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
