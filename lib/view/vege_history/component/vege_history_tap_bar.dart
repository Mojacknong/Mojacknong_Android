import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/feed_screen.dart';
import 'package:flutter/material.dart';

class VegeHistoryTabBar extends StatefulWidget {
  const VegeHistoryTabBar({super.key});

  @override
  State<VegeHistoryTabBar> createState() => _VegeHistoryTabBarState();
}

class _VegeHistoryTabBarState extends State<VegeHistoryTabBar> {
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
                width: 180,
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2.5, color: FarmusThemeColor.dark),
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
                Center(child: FeedScreen()),
                Center(child: FeedScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
