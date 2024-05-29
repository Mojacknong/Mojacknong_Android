import 'package:farmus/common/farmus_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';
import 'home_vege_name_input.dart';

class HomeVegeAddSecond extends ConsumerWidget {
  const HomeVegeAddSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "채소 별명을 입력해주세요"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: HomeVegeNameInput(),
          ),
          const SizedBox(
            height: 32.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "키우기 시작한 날을 선택해주세요"),
          ),
          FarmusCalender(),
        ],
      ),
    );
  }
}
