import 'package:farmus/view/my_page/vege_history/component/vege_history_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';

class VegeHistoryScreen extends StatelessWidget {
  const VegeHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: VegeHistoryAppBar(),
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
