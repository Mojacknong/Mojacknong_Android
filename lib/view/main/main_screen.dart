import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/common/farmus_theme_text_style.dart';
import 'package:farmus/common/primary_app_bar.dart';
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
      appBar: PrimaryAppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/image/ic_home.svg"), label: "홈"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/image/ic_farm_club.svg"),
              label: "팜클럽"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/image/ic_search.svg"),
              label: "탐색"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/image/ic_union.svg"),
              label: "마이페이지"),
        ],
        currentIndex: _selectedIndex,
        iconSize: 3.0,
        selectedIconTheme: const IconThemeData(color: FarmusThemeColor.primary),
        selectedItemColor: FarmusThemeColor.gray1,
        selectedLabelStyle: FarmusThemeTextStyle.gray1Bold11,
        onTap: _onItemTapped,
      ),
    );
  }
}
