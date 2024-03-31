import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';
import 'package:flutter/material.dart';

class VegeHistoryScreen extends StatelessWidget {
  const VegeHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "채소 히스토리",
      ),
      body: Column(
        children: [
          Expanded(
            child: VegeHistoryList(),
          ),
        ],
      ),
    );
  }
}
