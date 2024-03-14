import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_content.dart';
import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_pic.dart';
import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VegeDiaryFeed extends StatelessWidget {
  final String content;
  final String image;

  const VegeDiaryFeed({
    Key? key,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String postTime = DateFormat('MM/dd kk:mm').format(DateTime.now());

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VegeDiaryPicture(
              image: "",
            ),
            const SizedBox(
              height: 8,
            ),
            VegeDiaryContent(
              content: content,
            ),
            VegeDiaryTime(postTime: postTime),
          ],
        ),
      ),
    );
  }
}
