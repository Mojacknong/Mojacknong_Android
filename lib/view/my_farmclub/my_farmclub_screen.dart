import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_history_list.dart';
import 'package:flutter/material.dart';

class MyFarmclubScreen extends StatelessWidget {
  const MyFarmclubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "팜클럽 히스토리",
      ),
      body: Column(
        children: [
          Expanded(
            child: FarmclubHistoryList(),
          ),
        ],
      ),
    );
  }
}
