import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/search/component/search_vege_info.dart';
import 'package:flutter/material.dart';

class SearchTabBar extends StatefulWidget {
  const SearchTabBar({super.key});

  @override
  State<SearchTabBar> createState() => _SearchTabBarState();
}

class _SearchTabBarState extends State<SearchTabBar> {
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
                width: 120,
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
                          "상추",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "대파",
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
          SizedBox(
            width: double.infinity,
            height: 260,
            child: TabBarView(
              children: [
                Center(
                    child: SearchVegeInfo(
                  day: "1",
                  num: "5",
                  total: "8",
                )),
                Center(
                    child: SearchVegeInfo(
                  day: "5",
                  num: "5",
                  total: "8",
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
