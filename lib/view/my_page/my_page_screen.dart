import 'package:farmus/view/my_page/component/my_page_app_bar.dart';
import 'package:farmus/view/my_page/component/my_page_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPageScreen extends ConsumerWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: MyPageAppBar(),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: MyPageInfo(image: ""),
            ),
          ),
        ],
      ),
    );
  }
}
