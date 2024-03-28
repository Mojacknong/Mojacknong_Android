import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/vege_history/component/vege_history_tap_bar.dart';
import 'package:farmus/view/vege_history/component/vege_profile.dart';
import 'package:flutter/material.dart';

class VegeHistoryTabScreen extends StatefulWidget {
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const VegeHistoryTabScreen({
    Key? key,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  State<VegeHistoryTabScreen> createState() => _VegeHistoryTabScreenState();
}

class _VegeHistoryTabScreenState extends State<VegeHistoryTabScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(),
      body: Column(
        children: <Widget>[
          IgnorePointer(
            ignoring: true,
            child: VegeProfile(),
          ),
          Expanded(child: VegeHistoryTabBar()),
        ],
      ),
    );
  }
}
