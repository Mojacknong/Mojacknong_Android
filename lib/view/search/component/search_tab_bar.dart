import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/view/search/component/search_vege_info.dart';
import 'package:flutter/material.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PrimaryTabBar(
      tab: ["상추", "대파"],
      tabView: [
        Padding(
          padding: EdgeInsets.all(16),
          child: SearchVegeInfo(
            day: "1",
            num: "5",
            total: "8",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: SearchVegeInfo(
            day: "5",
            num: "5",
            total: "8",
          ),
        ),
      ],
      tabViewHeights: 280,
    );
  }
}
