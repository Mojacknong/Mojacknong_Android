import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_certification/component/my_certification_feed.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_profile.dart';
import 'package:flutter/material.dart';

class MyCertificationScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "나의 인증",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IgnorePointer(ignoring: true, child: FarmclubProfile()),
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
