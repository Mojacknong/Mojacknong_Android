import 'package:farmus/common/farmus_picture_fix.dart';
import 'package:farmus/view/vege_diary/vege_diary_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class HomeVegeDiary extends ConsumerWidget {
  const HomeVegeDiary({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VegeDiaryScreen()),
        );
      },
      child: Row(
        children: [
          FarmusPictureFix(
            size: 64,
            child: Container(),
          ),
          SizedBox(
            width: 16,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2023년 11월 25일",
                  style: FarmusThemeTextStyle.gray1Medium13,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "우리 상훈이가 쑥쑥 자라고 있네? 얼른 다 자라서 삼겹살이랑 쌈장 마늘 해서···",
                  style: FarmusThemeTextStyle.darkMedium15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
