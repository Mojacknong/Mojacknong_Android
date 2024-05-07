import 'package:farmus/view/my_page/my_page_feed/my_page_feed.dart';
import 'package:flutter/material.dart';

class MyPageFeedList extends StatefulWidget {
  const MyPageFeedList({
    Key? key,
  }) : super(key: key);

  @override
  State<MyPageFeedList> createState() => _MyPageFeedListState();
}

class _MyPageFeedListState extends State<MyPageFeedList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyPageFeed(
            content: "아 설레ㅋㅋ" * 20,
            image: "",
          ),
          MyPageFeed(
            content: "건강하게 자라 " * 20,
            image: "",
          ),
        ],
      ),
    );
  }
}
