import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_open/farmclub_open_screen.dart';
import 'package:farmus/view/search/component/about_farmclub/about_farmclub_first.dart';
import 'package:farmus/view/search/component/about_farmclub/about_farmclub_fourth.dart';
import 'package:farmus/view/search/component/about_farmclub/about_farmclub_second.dart';
import 'package:farmus/view/search/component/about_farmclub/about_farmclub_third.dart';
import 'package:farmus/view/search/component/search_difficulty_box.dart';
import 'package:farmus/view/search/component/search_farmclub_info.dart';
import 'package:farmus/view/search/component/search_tab_bar.dart';
import 'package:farmus/view/search/component/search_welcome_text.dart';
import 'package:farmus/view/search_farmclub/search_farmclub_screen.dart';
import 'package:farmus/view_model/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final List<String> _pageContents = ['first', 'second', 'third', 'fourth'];

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              _showDialog(context);
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_search_glass.svg',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SearchFarmclubScreen()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FarmclubOpenScreen()),
          );
        },
        backgroundColor: FarmusThemeColor.primary,
        shape: const CircleBorder(),
        elevation: 10,
        highlightElevation: 30,
        child: const Icon(
          Icons.add,
          color: FarmusThemeColor.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchWelcomeText(),
            SearchTabBar(),
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
            SizedBox(height: 16),
            SearchDifficultyBox(),
            SizedBox(height: 16),
            SearchFarmclubInfo(),
            SearchFarmclubInfo(),
            SearchFarmclubInfo(),
            SearchFarmclubInfo(),
            SearchFarmclubInfo(),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context) {
    ref.read(aboutSearchPageProvider.notifier).updatePage(0);

    return showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Consumer(
            builder: (context, ref, _) {
              final currentPage = ref.watch(aboutSearchPageProvider);
              return Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              color: Colors.white,
                              iconSize: 24.0,
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: PageView.builder(
                          itemCount: _pageContents.length,
                          onPageChanged: (int page) {
                            ref
                                .read(aboutSearchPageProvider.notifier)
                                .updatePage(page);
                          },
                          itemBuilder: (context, index) {
                            switch (_pageContents[index]) {
                              case 'first':
                                return const AboutFarmclubFirst();
                              case 'second':
                                return const AboutFarmclubSecond();
                              case 'third':
                                return const AboutFarmclubThird();
                              case 'fourth':
                                return const AboutFarmclubFourth();
                              default:
                                return Container();
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: buildPageIndicator(currentPage),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget buildPageIndicator(int currentPage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _pageContents.length,
        (index) => buildIndicator(index, currentPage),
      ),
    );
  }

  Widget buildIndicator(int index, int currentPage) {
    return Container(
      width: 6.0,
      height: 6.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index
            ? FarmusThemeColor.white
            : FarmusThemeColor.gray2,
      ),
    );
  }
}
