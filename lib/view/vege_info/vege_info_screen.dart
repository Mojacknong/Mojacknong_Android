import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/farmus_calender.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_vege/my_vege_screen.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:farmus/view_model/my_vege/my_vege_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/button/bottom_backgroud_divider_button.dart';
import '../vege_add/component/home_vege_name_input.dart';

class VegeInfoScreen extends ConsumerWidget {
  const VegeInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '채소 정보',
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(myVegeDeleteProvider);
              ref.invalidate(myVegeProvider);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyVegeScreen()),
              );
            },
            icon: SvgPicture.asset('assets/image/ic_list.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: VegeInfoDetail(
                      info: const {
                        '채소': '상추',
                        '날짜': '2023.11.23',
                        '파머': '파머시치',
                      },
                      bottomWidget: Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 8.0),
                        child: SvgPicture.asset(
                          'assets/image/logo_farmus.svg',
                          colorFilter: const ColorFilter.mode(
                              FarmusThemeColor.gray3, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '채소 별명',
                      style: FarmusThemeTextStyle.darkSemiBold15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: HomeVegeNameInput(),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '키우기 시작한 날',
                      style: FarmusThemeTextStyle.darkSemiBold15,
                    ),
                  ),
                  FarmusCalender(),
                  const SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ),
          ),
          BottomBackgroundDividerButton(
            button: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                onPressed: () {},
                text: '수정',
                width: double.infinity,
                enabled: true,
                textColor: FarmusThemeColor.white,
                backgroundColor: FarmusThemeColor.primary,
                borderColor: FarmusThemeColor.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
