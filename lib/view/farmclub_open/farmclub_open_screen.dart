import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/bottom_backgroud_divider_button.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/common/farmus_calender.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_intro_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_my_vege_list.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_name_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_num_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_text.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_titles.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubOpenScreen extends ConsumerWidget {
  const FarmclubOpenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "팜클럽 개설",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FarmclubOpenText(),
                  const FarmclubMyVegeList(),
                  const FarmclubOpenTitles(text: "팜클럽 이름"),
                  const FarmclubNameInput(),
                  const Row(
                    children: [
                      FarmclubOpenTitles(
                        text: '인원수',
                      ),
                      FarmclubOpenTitles(
                        text: '최소 3명 최대 20명',
                        style: FarmusThemeTextStyle.gray2Medium13,
                      ),
                    ],
                  ),
                  const FarmclubNumInput(),
                  const FarmclubOpenTitles(text: "팜클럽 한 줄 소개"),
                  const FarmclubIntroInput(),
                  const FarmclubOpenTitles(text: "모집 마감일"),
                  FarmusCalender(
                    lastDay: DateTime.now().add(const Duration(days: 18262)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          BottomBackgroundDividerButton(
            button: Consumer(
              builder: (context, ref, child) {
                final farmclubInfo = ref.watch(farmclubOpenInfoAddProvider);
                final isFarmclubOpenInfoComplete =
                    farmclubInfo.isFarmclubOpenInfoComplete;
                bool enabled = isFarmclubOpenInfoComplete;

                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 32),
                  child: SizedBox(
                    width: double.infinity,
                    child: PrimaryColorButton(
                      enabled: enabled,
                      fontSize: 15,
                      text: "개설하기",
                      fontPadding: 15,
                      onPressed: () {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.of(context).pop();
                            });
                            return const CheckDialog(
                              text: "팜클럽을 개설했어요",
                            );
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
