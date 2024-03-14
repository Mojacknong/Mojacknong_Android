import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_feed.dart';
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
            VegeDiaryFeed(
              content: "아 설레" * 20,
              image: "",
            ),
            VegeDiaryFeed(
              content: "건강하게 자라 " * 20,
              image: "",
            ),
          ],
        ),
      ),
    );
  }
}
