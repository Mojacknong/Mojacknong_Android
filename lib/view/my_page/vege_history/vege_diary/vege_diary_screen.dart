import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_tap.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_profile.dart';
import 'package:flutter/material.dart';

class VegeDiaryScreen extends StatefulWidget {
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const VegeDiaryScreen({
    Key? key,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  State<VegeDiaryScreen> createState() => _VegeDiaryScreenState();
}

class _VegeDiaryScreenState extends State<VegeDiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "채소 히스토리",
      ),
      body: Column(
        children: <Widget>[
          VegeProfile(),
          Expanded(child: VegeTabBar()),
        ],
      ),
    );
  }
}
