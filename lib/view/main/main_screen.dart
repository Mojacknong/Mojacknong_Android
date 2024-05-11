import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub/farmclub_screen.dart';
import 'package:farmus/view/home/home_screen.dart';
import 'package:farmus/view/my_page/my_page_screen.dart';
import 'package:farmus/view/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends ConsumerStatefulWidget {
  final int selectedIndex;

  const MainScreen({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  ConsumerState createState() => _MainScreenState(selectedIndex);
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _selectedIndex;

  _MainScreenState(this._selectedIndex);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FarmclubScreen(),
    SearchScreen(),
    MyPageScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

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
