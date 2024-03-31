import 'package:farmus/view/my_certification/component/step_title.dart';
import 'package:farmus/view/my_page/my_page_feed/my_page_feed_content.dart';
import 'package:farmus/view/my_page/my_page_feed/my_page_feed_picture.dart';
import 'package:farmus/view/my_page/my_page_feed/my_page_feed_time.dart';
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
            const MyPageFeedPicture(),
            const SizedBox(
              height: 8,
            ),
            MyPageFeedContent(
              content: content,
            ),
            MyPageFeedTime(postTime: postTime),
          ],
        ),
      ),
    );
  }
}