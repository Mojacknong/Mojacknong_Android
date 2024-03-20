import 'package:farmus/view/vegi_add/component/home_vegi_name_input.dart';
import 'package:farmus/view/vegi_add/component/vegi_add_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';

class HomeVegiAddSecond extends ConsumerWidget {
  const HomeVegiAddSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "채소 별명을 입력해주세요"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: HomeVegiNameInput(),
          ),
          SizedBox(
            height: 32.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "키우기 시작한 날을 선택해주세요"),
          ),
          VegiAddCalender(),
        ],
      ),
    );
  }
}
