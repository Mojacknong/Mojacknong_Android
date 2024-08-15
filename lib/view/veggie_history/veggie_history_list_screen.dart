import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:flutter/material.dart';

import 'component/veggie_history_profile.dart';

class VeggieHistoryListScreen extends StatelessWidget {
  const VeggieHistoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "채소 히스토리",
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  VeggieHistoryProfile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
