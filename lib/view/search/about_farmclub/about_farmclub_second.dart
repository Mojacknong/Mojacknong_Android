import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/about_farmclub/about_farmclub_widget.dart';
import 'package:flutter/material.dart';

class AboutFarmclubSecond extends StatelessWidget {
  const AboutFarmclubSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutFarmclubWidget(
      dialogs: [
        Dialog(
          insetPadding: const EdgeInsets.fromLTRB(22, 0, 22, 6),
          child: Image.asset('assets/image/img_about_farmclub_second1.png'),
        ),
        Dialog(
          insetPadding: const EdgeInsets.fromLTRB(22, 8, 22, 60),
          child: Image.asset('assets/image/img_about_farmclub_second2.png'),
        ),
      ],
      messageSpans: const [
        TextSpan(
            text: '\n채소의 생장주기에 따라\n',
            style: FarmusThemeTextStyle.whiteMedium17),
        TextSpan(text: '도움말', style: FarmusThemeTextStyle.green6Medium17),
        TextSpan(text: '과 ', style: FarmusThemeTextStyle.whiteMedium17),
        TextSpan(text: '미션', style: FarmusThemeTextStyle.green6Medium17),
        TextSpan(text: '이 제공되어요', style: FarmusThemeTextStyle.whiteMedium17),
      ],
    );
  }
}
