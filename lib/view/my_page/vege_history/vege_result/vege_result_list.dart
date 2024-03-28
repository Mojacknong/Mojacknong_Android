import 'package:farmus/view/my_page/vege_history/vege_result/vege_result_feed.dart';
import 'package:flutter/material.dart';

class VegeResultList extends StatefulWidget {
  const VegeResultList({
    Key? key,
  }) : super(key: key);

  @override
  State<VegeResultList> createState() => _VegeResultListState();
}

class _VegeResultListState extends State<VegeResultList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            VegeResultFeed(
              content: "진짜 맛있음 " * 20,
              image: "",
            ),
            VegeResultFeed(
              content: "진짜 맛있음 " * 20,
              image: "",
            ),
          ],
        ),
      ),
    );
  }
}
