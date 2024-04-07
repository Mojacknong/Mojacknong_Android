import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:farmus/view/home/component/home_vege_routine.dart';
import 'package:flutter/material.dart';

import '../../common/app_bar/home_app_bar.dart';
import 'component/home_my_vege.dart';
import 'component/home_vege_diary.dart';

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
              const HomeMyVegeList(),
              const SizedBox(
                height: 8,
              ),
              HomeMyVege(size: size),
              const HomeMotivation(motivation: "텃밭에서 식탁까지 팜어스와 늘 함께해요!"),
              const HomeSubTitle(title: "오늘 할 일"),
              const HomeToDo(),
              const HomeVegeRoutine(),
              const SizedBox(
                height: 24,
              ),
              const HomeSubTitle(title: "성장 일기"),
              const HomeVegeDiary(),
            ],
          ),
        ),
      ),
    );
  }
}
