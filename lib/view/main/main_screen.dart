import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/community/community_screen.dart';
import 'package:mojacknong_android/view/farmclub/farmclub_screen.dart';
import 'package:mojacknong_android/view/home/home_screen.dart';
import 'package:mojacknong_android/view/my_page/my_page_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[

    HomeScreen(),
    FarmclubScreen(),
    CommunityScreen(),
    MyPageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: _bottom(),
      ),
    );
  }

  int selectedIndex = 0;
  final String assetName = 'assets/icons/ic_home.svg';

  Widget _bottom() {
    return Container(
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: FarmusThemeData.white,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: FarmusThemeData.primary,
        unselectedItemColor: FarmusThemeData.grey3,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                'assets/image/ic_home.svg',
                color: _selectedIndex == 0
                    ? FarmusThemeData.primary
                    : FarmusThemeData.grey3,
              ),
            ),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                'assets/image/ic_challenge.svg',
                color: _selectedIndex == 1
                    ? FarmusThemeData.primary
                    : FarmusThemeData.grey3,
              ),
            ),
            label: "팜클럽",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                'assets/image/ic_community.svg',
                color: _selectedIndex == 2
                    ? FarmusThemeData.primary
                    : FarmusThemeData.grey3,
              ),
            ),
            label: "커뮤니티",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                'assets/image/ic_my_page.svg',
                color: _selectedIndex == 3
                    ? FarmusThemeData.primary
                    : FarmusThemeData.grey3,
              ),
            ),
            label: "마이페이지",
          ),
        ],
      ),
    );
  }
}
