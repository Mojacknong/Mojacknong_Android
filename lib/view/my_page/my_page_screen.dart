import 'package:farmus/view/my_page/component/my_history.dart';
import 'package:farmus/view/my_page/component/my_page_app_bar.dart';
import 'package:farmus/view/my_page/component/my_page_info.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyPageAppBar(),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 140,
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: MyPageInfo(image: ""),
            ),
          ),
          SizedBox(
            height: 500,
            child: MyHistory(),
          )
        ],
      ),
    );
  }
}
