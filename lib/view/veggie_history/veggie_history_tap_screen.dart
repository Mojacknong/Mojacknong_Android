import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:flutter/material.dart';

import 'component/veggie_history_profile.dart';
import 'component/veggie_history_tap_bar.dart';

class VeggieHistoryTabScreen extends StatefulWidget {

  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const VeggieHistoryTabScreen({
    Key? key,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  State<VeggieHistoryTabScreen> createState() => _VeggieHistoryTabScreenState();
}

class _VeggieHistoryTabScreenState extends State<VeggieHistoryTabScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(),
      body: Column(
        children: <Widget>[
          IgnorePointer(
            ignoring: true,
            child: VeggieHistoryProfile(),
          ),
          Expanded(child: VeggieHistoryTabBar()),
        ],
      ),
    );
  }
}
