import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/component/about_farmclub/about_farmclub_widget.dart';
import 'package:flutter/material.dart';

class AboutFarmclubThird extends StatelessWidget {
  const AboutFarmclubThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutFarmclubWidget(
      dialogs: [
        Dialog(
          insetPadding: const EdgeInsets.fromLTRB(22, 0, 22, 20),
          child: Image.asset('assets/image/img_about_farmclub_third.png'),
        ),
      ],
      messageSpans: const [
        TextSpan(
            text: '미션 성공여부와 성장일기를 ', style: FarmusThemeTextStyle.whiteMedium17),
        TextSpan(text: '공유', style: FarmusThemeTextStyle.green6Medium17),
        TextSpan(text: '하며\n', style: FarmusThemeTextStyle.whiteMedium17),
        TextSpan(
            text: '홈파밍의 즐거움을 함께 나눠요!',
            style: FarmusThemeTextStyle.green6Medium17),
      ],
    );
  }
}
