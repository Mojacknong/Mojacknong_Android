import 'package:farmus/common/base/base_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/farmus_theme_color.dart';

class PrimaryTabBar extends StatelessWidget implements BaseTabBar {
  const PrimaryTabBar({
    Key? key,
    required this.tab,
    required this.tabView,
    this.tabViewHeights,
    this.labelStyle,
    this.unselectedLabelStyle,
  }) : super(key: key);

  @override
  final List<String> tab;
  @override
  final List<Widget> tabView;
  @override
  final double? tabViewHeights;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;

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
            labelStyle: labelStyle ?? FarmusThemeTextStyle.darkSemiBold17,
            unselectedLabelStyle:
                unselectedLabelStyle ?? FarmusThemeTextStyle.gray3SemiBold17,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: tab.map((tabs) => Tab(text: tabs)).toList(),
          ),
          if (tabViewHeights != null)
            SizedBox(
              height: tabViewHeights,
              child: TabBarView(
                children: tabView,
              ),
            )
          else
            Expanded(
              child: TabBarView(
                children: tabView.map((widget) {
                  return SingleChildScrollView(
                    child: widget,
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
