import 'package:farmus/view/my_page/my_page_feed/my_page_feed.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
      ),
    );
  }
}
