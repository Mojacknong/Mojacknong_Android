import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_intro_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_my_vege_list.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_name_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_num_input.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_calendar.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_text.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_titles.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubOpenScreen extends ConsumerWidget {
  const FarmclubOpenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFarmclubInfo = ref.read(farmclubOpenInfoAddProvider);
    final isFarmclubOpenInfoComplete =
        isFarmclubInfo.isFarmclubOpenInfoComplete;

    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "팜클럽 개설",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FarmclubOpenText(),
              FarmclubMyVegeList(),
              FarmclubOpenTitles(text: "팜클럽 이름"),
              FarmclubNameInput(),
              Row(
                children: [
                  FarmclubOpenTitles(
                    text: '인원수',
                  ),
                  SizedBox(width: 8),
                  FarmclubOpenTitles(
                    text: '최소 3명 최대 20명',
                    style: FarmusThemeTextStyle.gray2Medium13,
                  ),
                ],
              ),
              FarmclubNumInput(),
              FarmclubOpenTitles(text: "팜클럽 한 줄 소개"),
              FarmclubIntroInput(),
              FarmclubOpenTitles(text: "모집 마감일"),
              FarmclubOpenCalendar(),
            ],
          ),
        ),
      ),
    );
  }
}
