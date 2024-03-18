import 'package:farmus/view/my_page/vege_history/component/vege_history_app_bar.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_tap.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_vege.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeHistoryList extends ConsumerWidget {
  const VegeHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: VegeHistoryAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: MyPageProfileList(
                veggieName: "파아하",
                veggieType: "대파",
                periodStart: "23.06.27",
                periodEnd: "23.11.14",
                image: ""),
          ),
          Expanded(child: VegeTabBar())
        ],
      ),
    );
  }
}
