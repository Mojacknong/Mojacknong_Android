import 'package:farmus/common/base/base_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/farmus_theme_color.dart';

class PrimaryTabBar extends StatelessWidget implements BaseTabBar {
  const PrimaryTabBar(
      {super.key, required this.tab, required this.tabView});

  @override
  final List<String> tab;

  @override
  final List<Widget> tabView;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: tab.length,
      child: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2, color: FarmusThemeColor.dark),
            ),
            labelStyle: FarmusThemeTextStyle.darkSemiBold17,
            unselectedLabelStyle: FarmusThemeTextStyle.gray3SemiBold17,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: tab.map((tabs) => Tab(text: tabs)).toList(),
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: TabBarView(
              children: [
                for (var child in tabView) child,
              ],
            ),
          ),
        ],
      ),
    );
  }

}
