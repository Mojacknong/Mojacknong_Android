import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/add_button.dart';
import 'package:farmus/common/button/diary_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/vege_diary/component/vege_diary_info.dart';
import 'package:farmus/view/vege_diary/component/vege_diary_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegeDiaryScreen extends StatelessWidget {
  const VegeDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "성장일기",
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VegeDiaryInfo(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Text(
                        '최신순',
                        style: FarmusThemeTextStyle.gray2Medium13,
                      ),
                    ),
                    Column(
                      children: [
                        VegeDiaryWidget(),
                        VegeDiaryWidget(),
                        VegeDiaryWidget(),
                        VegeDiaryWidget()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: DiaryButton(),
          ),
        ],
      ),
    );
  }
}
