import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_farmclub/component/my_farmclub_stack_box.dart';
import 'package:farmus/view/my_page/component/my_vege_stack_box.dart';
import 'package:flutter/material.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "내 히스토리",
                style: FarmusThemeTextStyle.darkSemiBold17,
              ),
            ],
          ),
        ),
        const MyVegeStackBox(historyType: '채소 ', message: '번의 채소 재배에 성공했어요.'),
        const SizedBox(
          height: 30,
        ),
        MyFarmClubStackBox(
            image: Image.asset('assets/image/ic_farmclub_mark.svg'),
            historyType: "팜클럽 ",
            message: "개의 팜클럽에서 모든 미션을 완료했어요.")
      ],
    );
  }
}
