import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/home/veggie_diary_one_model.dart';
import 'package:flutter/material.dart';

import '../../vege_diary/vege_diary_screen.dart';

class HomeVegeDiary extends StatelessWidget {
  final VeggieDiaryOneModel diary;

  const HomeVegeDiary({Key? key, required this.diary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VegeDiaryScreen()),
        );
      },
      child: Row(
        children: [
          Image.network(
            diary.image!,
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  diary.date!,
                  style: FarmusThemeTextStyle.gray1Medium13,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  diary.content!,
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
