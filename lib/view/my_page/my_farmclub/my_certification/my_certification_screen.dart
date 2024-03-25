import 'package:farmus/view/my_page/my_farmclub/component/farmclub_profile.dart';
import 'package:farmus/view/my_page/my_farmclub/my_certification/my_certification_app_bar.dart';
import 'package:farmus/view/my_page/my_farmclub/my_certification/my_certification_feed.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_diary_feed.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_app_bar.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_tap.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_profile.dart';
import 'package:flutter/material.dart';

class MyCertificationScreen extends StatefulWidget {
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const MyCertificationScreen({
    Key? key,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  State<MyCertificationScreen> createState() => _MyCertificationScreenState();
}

class _MyCertificationScreenState extends State<MyCertificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCertificationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FarmClubProfile(),
            MyCertificationFeed(
              content: "진짜 맛있음 " * 20,
              title: "상추 심고 사진 찍기",
              step: '1',
              image: "",
            ),
            MyCertificationFeed(
              content: "진짜 맛있음 " * 20,
              title: "어쩌구저쩌구",
              step: '2',
              image: "",
            ),
          ],
        ),
      ),
    );
  }
}
