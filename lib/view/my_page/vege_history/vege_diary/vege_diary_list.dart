import 'package:farmus/view/my_page/component/my_page_feed/my_page_feed_screen.dart';
import 'package:flutter/material.dart';

class VegeDiaryList extends StatefulWidget {
  const VegeDiaryList({
    Key? key,
  }) : super(key: key);

  @override
  State<VegeDiaryList> createState() => _VegeDiaryListState();
}

class _VegeDiaryListState extends State<VegeDiaryList> {
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
