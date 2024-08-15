import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'component/veggie_history_profile.dart';
import 'component/veggie_history_tap_bar.dart';

class VeggieHistoryTabScreen extends ConsumerStatefulWidget {
  final String detailId;
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const VeggieHistoryTabScreen({
    Key? key,
    required this.detailId,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  _VeggieHistoryTabScreenState createState() => _VeggieHistoryTabScreenState();
}

class _VeggieHistoryTabScreenState
    extends ConsumerState<VeggieHistoryTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(),
      body: Column(
        children: <Widget>[
          IgnorePointer(
            ignoring: true,
            child: VeggieHistoryProfile(
              detailId: widget.detailId,
              showDivider: false,
            ),
          ),
          Expanded(
            child: VeggieHistoryTabBar(detailId: widget.detailId),
          ),
        ],
      ),
    );
  }
}
