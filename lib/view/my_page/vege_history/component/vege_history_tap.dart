import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_list.dart';
import 'package:farmus/view/my_page/vege_history/vege_result/vege_result_list.dart';
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
                width: 180,
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2.5, color: FarmusThemeColor.dark),
                      // insets: EdgeInsets.symmetric(horizontal: 1),
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
                Center(child: VegeDiaryList()),
                Center(child: VegeResultList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
