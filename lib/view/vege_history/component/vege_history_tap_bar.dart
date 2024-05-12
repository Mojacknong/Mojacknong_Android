import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/my_page_feed/my_page_feed_list.dart';
import 'package:flutter/material.dart';

class VegeHistoryTabBar extends StatefulWidget {
  const VegeHistoryTabBar({super.key});

  @override
  State<VegeHistoryTabBar> createState() => _VegeHistoryTabBarState();
}

class _VegeHistoryTabBarState extends State<VegeHistoryTabBar> {
  @override
  Widget build(BuildContext context) {
    return const PrimaryTabBar(
      tab: ["성장일기", "재배결과"],
      tabView: [MyPageFeedList(), MyPageFeedList()],
      labelStyle: FarmusThemeTextStyle.darkSemiBold15,
      unselectedLabelStyle: FarmusThemeTextStyle.gray3SemiBold15,
    );
  }
}
