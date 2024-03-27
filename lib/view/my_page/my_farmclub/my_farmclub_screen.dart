import 'package:farmus/view/my_page/my_farmclub/component/farmclub_list.dart';
import 'package:farmus/view/my_page/my_farmclub/component/my_farmclub_app_bar.dart';
import 'package:flutter/material.dart';

class FarmClubScreen extends StatelessWidget {
  const FarmClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FarmClubAppBar(),
      body: Column(
        children: [
          Expanded(
            child: FarmClubList(),
          ),
        ],
      ),
    );
  }
}
