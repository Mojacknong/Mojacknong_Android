import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/image/ic_close.svg")),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "1/4",
              style: FarmusThemeTextStyle.green1Medium14,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 1,
            color: FarmusThemeColor.grey4,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "반가워요!\n프로필을 설정해볼까요?",
              style: FarmusThemeTextStyle.darkSemiBold20,
            ),
          )
        ],
      ),
    );
  }
}
