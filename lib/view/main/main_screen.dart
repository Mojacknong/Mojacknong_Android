import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:farmus/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("팜클럽"),
    Text("탐색"),
    Text("마이페이지"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_home.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 0
                      ? FarmusThemeColor.gray1
                      : FarmusThemeColor.gray4,
                  BlendMode.srcIn),
            ),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_farm_club.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 1
                      ? FarmusThemeColor.gray1
                      : FarmusThemeColor.gray4,
                  BlendMode.srcIn),
            ),
            label: "팜클럽",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_search.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 2
                      ? FarmusThemeColor.gray1
                      : FarmusThemeColor.gray4,
                  BlendMode.srcIn),
            ),
            label: "탐색",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_union.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 3
                      ? FarmusThemeColor.gray1
                      : FarmusThemeColor.gray4,
                  BlendMode.srcIn),
            ),
            label: "마이페이지",
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: FarmusThemeColor.gray1,
        unselectedItemColor: FarmusThemeColor.gray3,
        selectedLabelStyle: FarmusThemeTextStyle.gray1Bold11,
        unselectedLabelStyle: FarmusThemeTextStyle.gray3Bold11,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: FarmusThemeColor.white,
      ),
    );
  }
}
