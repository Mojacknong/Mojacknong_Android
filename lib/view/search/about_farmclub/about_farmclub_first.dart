import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/about_farmclub/about_farmclub_text_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutFarmclubFirst extends StatelessWidget {
  const AboutFarmclubFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Dialog(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/image/ic_alert_circle.svg',
                        colorFilter: const ColorFilter.mode(
                            FarmusThemeColor.primary, BlendMode.srcIn),
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '팜클럽이란',
                        style: FarmusThemeTextStyle.primarySemibold19,
                      ),
                    ],
                  ),
                  Image.asset('assets/image/about_farmclub_book.png'),
                  const SizedBox(height: 16.0),
                  const Text(
                      '파머들이 같은 채소를 함께 기르며 \n서로 소통하고 응원할 수 있는 공간이에요. \n‘함께 키운다’는 소속감과 동기부여를 통해\n홈파밍을 보다 즐겁게 해볼까요?',
                      textAlign: TextAlign.center,
                      style: FarmusThemeTextStyle.darkMedium15),
                ],
              ),
            ),
          ),
          const AboutFarmclubTextFirst()
        ],
      ),
    );
  }
}
