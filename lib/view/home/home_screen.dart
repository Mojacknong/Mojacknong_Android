import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

import '../../common/app_bar/home_app_bar.dart';
import 'component/home_my_vegi.dart';
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
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "오늘 할 일",
                  style: FarmusThemeTextStyle.gray1SemiBold17,
                ),
              ),
              HomeToDo()
            ],
          ),
        ),
      ),
    );
  }
}
