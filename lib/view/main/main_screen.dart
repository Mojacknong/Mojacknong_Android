import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mojacknong_android/view/challenge/challenge_screen.dart';
import 'package:mojacknong_android/view/community/community_screen.dart';
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
    ChallengeScreen(),
    CommunityScreen(),
    MyPageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: _screens[_selectedIndex],
        bottomNavigationBar: _bottom(),
      ),
    );
  }

  int selectedIndex = 0;
  final String assetName = 'assets/icons/ic_home.svg';

  Widget _bottom() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Color(0xFF184B2D),
      unselectedItemColor: Color(0xFFC0C0C0),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: SvgPicture.asset(
              'assets/icons/ic_home.svg',
              color:
                  _selectedIndex == 0 ? Color(0xFF184B2D) : Color(0xFFC0C0C0),
            ),
          ),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: SvgPicture.asset(
              'assets/icons/ic_challenge.svg',
              color:
                  _selectedIndex == 1 ? Color(0xFF184B2D) : Color(0xFFC0C0C0),
            ),
          ),
          label: "챌린지",
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: SvgPicture.asset(
              'assets/icons/ic_community.svg',
              color:
                  _selectedIndex == 2 ? Color(0xFF184B2D) : Color(0xFFC0C0C0),
            ),
          ),
          label: "커뮤니티",
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: SvgPicture.asset(
              'assets/icons/ic_my_page.svg',
              color:
                  _selectedIndex == 3 ? Color(0xFF184B2D) : Color(0xFFC0C0C0),
            ),
          ),
          label: "마이페이지",
        ),
      ],
    );
  }
}
