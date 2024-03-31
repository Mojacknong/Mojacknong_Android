import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';
import 'package:flutter/material.dart';

class VegeHistoryListScreen extends StatelessWidget {
  const VegeHistoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: VegeHistoryList(),
      ),
    );
  }
}
