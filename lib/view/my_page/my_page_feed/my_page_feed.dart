import 'package:farmus/view/my_page/my_page_feed/my_page_feed_content.dart';
import 'package:farmus/view/my_page/my_page_feed/my_page_feed_time.dart';
import 'package:flutter/material.dart';

import '../../../common/farmus_picture_fix.dart';

class MyPageFeed extends StatelessWidget {
  final String content;
  final String image;
  final String postTime;

  const MyPageFeed({
    Key? key,
    required this.content,
    required this.image,
    required this.postTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FarmusPictureFix(heightSize: 248,image: image),
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
