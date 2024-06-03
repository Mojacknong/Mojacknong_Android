import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_%20preparations.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_more_info_widget.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_only_container.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_button.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpScreen extends ConsumerWidget {
  const FarmclubSignUpScreen({
    Key? key,
    required this.day,
    required this.total,
    required this.num,
  }) : super(key: key);

  final String day;
  final String total;
  final String num;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "더보기",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: VegeInfoDetail(
                      showPadding: false,
                      showBoxDecoration: false,
                      showVegeContainer: false,
                      titleWidget: const FarmclubMoreInfoWidget(
                          farmclubName: "상추는현실이되다"),
                      info: {
                        '채소': '상추',
                        '시작': day,
                        '인원': '$num/$total명',
                      },
                      bottomWidget: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "상추를 치료해줄 사람어디 없나. 저만 매번 실패하나요..이번에는 꼭 성공해서 얼른 상추쌈 싸먹어요! 추를 치료해줄 사람어디 없나. 저만 매번 실패하나요..이번에는 꼭 성공해서 얼른 상추쌈 싸먹어요!",
                            style: FarmusThemeTextStyle.gray1Medium13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 6.0,
                    color: FarmusThemeColor.gray7,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "준비 사항",
                            style: FarmusThemeTextStyle.darkSemiBold17,
                          ),
                        ),
                        SizedBox(height: 12),
                        FarmclubPreparations(
                          supplies: "흙대파, 상토, 재사용 흙, 재배 용기",
                          howToChoose: null,
                          characteristics:
                              '심고 일주일만 기다리면 먹을 수 있어요\n장마철에 키우기 어려워요',
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: FarmclubOnlyContainer(),
                  )
                ],
              ),
            ),
          ),
          BottomBackgroundDividerButton(
            button: FarmclubSignUpButton(
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
