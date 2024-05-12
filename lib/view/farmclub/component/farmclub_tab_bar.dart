import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/farmus_theme_color.dart';

class FarmclubTabBar extends StatelessWidget {
  const FarmclubTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2, color: FarmusThemeColor.dark),
            ),
            labelStyle: FarmusThemeTextStyle.darkSemiBold17,
            unselectedLabelStyle: FarmusThemeTextStyle.gray3SemiBold17,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: '현재',),
              Tab(text: '이전'),
              Tab(text: '다음'),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 260,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TabBarView(
                children: [Text('data'), Text('data'), Text('data')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
