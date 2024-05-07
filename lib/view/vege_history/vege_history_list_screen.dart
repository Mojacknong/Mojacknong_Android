import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_page/component/my_divider.dart';
import 'package:farmus/view/vege_history/component/vege_profile.dart';
import 'package:flutter/material.dart';

class VegeHistoryListScreen extends StatelessWidget {
  const VegeHistoryListScreen({Key? key}) : super(key: key);

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
                  VegeProfile(),
                  MyDivider(),
                  VegeProfile(),
                  MyDivider(),
                  VegeProfile(),
                  MyDivider(),
                  VegeProfile()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
