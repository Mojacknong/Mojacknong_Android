import 'package:farmus/view/my_page/my_farmclub/my_certification/step_title.dart';
import 'package:farmus/view/my_page/vege_result/vege_result_content.dart';
import 'package:farmus/view/my_page/vege_result/vege_result_pic.dart';
import 'package:farmus/view/my_page/vege_result/vege_result_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyCertificationFeed extends StatelessWidget {
  final String title;
  final String content;
  final String image;
  final String step;

  const MyCertificationFeed(
      {Key? key,
      required this.title,
      required this.content,
      required this.image,
      required this.step})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String postTime = DateFormat('MM/dd kk:mm').format(DateTime.now());

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StepTitle(
              title: title,
              step: step,
            ),
            VegeResultPicture(
              image: image,
            ),
            const SizedBox(
              height: 8,
            ),
            VegeResultContent(
              content: content,
            ),
            VegeResultTime(postTime: postTime),
          ],
        ),
      ),
    );
  }
}
