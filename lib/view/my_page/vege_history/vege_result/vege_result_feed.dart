import 'package:farmus/view/my_page/component/my_page_feed/my_page_feed_content.dart';
import 'package:farmus/view/my_page/component/my_page_feed/my_page_feed_picture.dart';
import 'package:farmus/view/my_page/component/my_page_feed/my_page_feed_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VegeResultFeed extends StatelessWidget {
  final String content;
  final String image;

  const VegeResultFeed({
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
            MyPageFeedPicture(
              image: image,
            ),
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
