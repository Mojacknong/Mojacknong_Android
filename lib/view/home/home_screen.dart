import 'package:flutter/material.dart';

import '../../common/app_bar/home_app_bar.dart';
import 'component/home_motivation.dart';
import 'component/home_my_vegi.dart';
import 'component/home_none_routone.dart';
import 'component/home_sub_title.dart';
import 'component/home_to_do.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeMyVegi(),
              HomeMotivation(
                motivation: '텃밭에서 식탁까지 팜어스와 늘 함께해요!',
              ),
              SizedBox(
                height: 16,
              ),
              HomeSubTitle(title: "오늘 할 일"),
              HomeToDo(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: HomeNoneContent(text: "아직 루틴을 등록하지 않았어요"),
              ),
              HomeSubTitle(title: "성장 일기"),
              HomeNoneContent(text: "아직 작성한 일기가 없어요"),
            ],
          ),
        ),
      ),
    );
  }
}
