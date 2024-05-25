import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FarmclubEmpty extends ConsumerWidget {
  const FarmclubEmpty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 34,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        decoration: ShapeDecoration(
          color: FarmusThemeColor.gray7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/image/ic_alert_circle.svg',
                            width: 18.0,
                            height: 18.0,
                            colorFilter: const ColorFilter.mode(
                              FarmusThemeColor.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '아직 가입한 팜클럽이 없어요',
                            style: FarmusThemeTextStyle.primarySemibold19,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      SvgPicture.asset(
                        'assets/image/ic_farmclub_mark.svg',
                        width: 52.0,
                        height: 52.0,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        '팜클럽은 파머들이 같은 채소를 \n기르며 서로 소통하는 공간이에요. \n‘함께 키운다’는 소속감과 동기부여를 통해\n홈파밍을 보다 즐겁게 해볼까요?',
                        textAlign: TextAlign.center,
                        style: FarmusThemeTextStyle.darkMedium15,
                      ),
                    ],
                  ),
                  const SizedBox(height: 34),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryColorButton(
                        text: '팜클럽 탐색하기', onPressed: () {}, enabled: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
