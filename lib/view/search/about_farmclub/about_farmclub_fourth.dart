import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/about_farmclub/about_farmclub_widget.dart';
import 'package:flutter/material.dart';

class AboutFarmclubFourth extends StatelessWidget {
  const AboutFarmclubFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutFarmclubWidget(
      dialogs: [
        Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 45),
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/image/img_about_farmclub_fourth1.png'),
        ),
        Dialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/image/img_about_farmclub_fourth2.png'),
        ),
        Dialog(
          insetPadding: const EdgeInsets.fromLTRB(45, 0, 45, 20),
          child: Image.asset('assets/image/img_about_farmclub_fourth3.png'),
        ),
      ],
      messageSpans: const [
        TextSpan(
            text: '주어진 미션을 모두 인증하면\n팜클럽의 여정이 끝나요!',
            style: FarmusThemeTextStyle.whiteMedium17),
      ],
    );
  }
}
