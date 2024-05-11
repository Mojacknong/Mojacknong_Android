import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/component/search_difficulty_box.dart';
import 'package:farmus/view/search/component/search_farmclub_info.dart';
import 'package:farmus/view/search/component/search_tab_bar.dart';
import 'package:farmus/view/search/component/search_welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: FarmusLogoAppBar(
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_alert_circle.svg',
              colorFilter: const ColorFilter.mode(
                  FarmusThemeColor.black, BlendMode.srcIn),
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_search_glass.svg',
            ),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: FarmusThemeColor.primary,
        shape: const CircleBorder(),
        elevation: 10,
        highlightElevation: 30,
        child: const Icon(
          Icons.add,
          color: FarmusThemeColor.white,
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWelcomeText(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchTabBar(),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "전체보기",
                          style: FarmusThemeTextStyle.darkSemiBold17,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SearchDifficultyBox(),
                  SizedBox(
                    height: 16,
                  ),
                  SearchFarmclubInfo(),
                  SearchFarmclubInfo(),
                  SearchFarmclubInfo(),
                  SearchFarmclubInfo(),
                  SearchFarmclubInfo(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
