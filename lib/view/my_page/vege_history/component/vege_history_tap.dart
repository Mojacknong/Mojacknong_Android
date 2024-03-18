import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_diary_feed.dart';
import 'package:flutter/material.dart';

class VegeTabBar extends StatefulWidget {
  const VegeTabBar({super.key});

  @override
  State<VegeTabBar> createState() => _VegeTabBarState();
}

class _VegeTabBarState extends State<VegeTabBar> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 200,
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2.5, color: FarmusThemeColor.dark),
                      insets: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    labelColor: FarmusThemeColor.dark,
                    unselectedLabelColor: FarmusThemeColor.gray3,
                    tabs: [
                      Tab(
                        child: Text(
                          "성장일기",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "재배 결과",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1.0,
            height: 1,
          ),
          Expanded(
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Center(
                      child: VegeDiaryFeed(content: "우왕 너무 좋앙 ", image: "")),
                ),
                SingleChildScrollView(
                  child: Center(child: Text("Tab 2 Content")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
