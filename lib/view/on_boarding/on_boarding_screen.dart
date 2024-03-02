import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_boarding_app_bar.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnBoardingAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              thickness: 1,
              color: FarmusThemeColor.grey4,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "반가워요!\n프로필을 설정해볼까요?",
                style: FarmusThemeTextStyle.darkSemiBold20,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 110,
                height: 110,
                decoration: const ShapeDecoration(
                  color: FarmusThemeColor.grey5,
                  shape: OvalBorder(),
                ),
                child: Stack(
                  children: [
                    Center(child: SvgPicture.asset("assets/image/ic_camera.svg"))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "닉네임",
                textAlign: TextAlign.start,
                style: FarmusThemeTextStyle.darkMedium13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "파머",
                  hintStyle: const TextStyle(
                    color: FarmusThemeColor.grey3,
                    fontFamily: "Pretendard",
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: FarmusThemeColor.grey4,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: FarmusThemeColor.grey4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
