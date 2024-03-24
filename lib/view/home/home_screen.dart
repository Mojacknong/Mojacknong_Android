import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vegi_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:flutter/material.dart';

import '../../common/app_bar/home_app_bar.dart';
import 'component/home_my_vegi.dart';
import 'component/home_vegi_routine.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeMyVegiList(),
              const SizedBox(
                height: 8,
              ),
              HomeMyVegi(size: size),
              const HomeMotivation(motivation: "텃밭에서 식탁까지 팜어스와 늘 함께해요!"),
              const HomeSubTitle(title: "오늘 할 일"),
              const HomeToDo(),
              const Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "1개",
                        style: FarmusThemeTextStyle.redSemiBold13,
                      ),
                      Text(
                        "의 루틴이 남았어요",
                        style: FarmusThemeTextStyle.gray1Medium13,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HomeVegiRoutine(routine: '물 갈아 주기', day: '4일 1회',),
                  Divider(
                    height: 1,
                    color: FarmusThemeColor.gray5,
                  ),
                  HomeVegiRoutine(routine: '물 주기', day: '3일 1회',),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
