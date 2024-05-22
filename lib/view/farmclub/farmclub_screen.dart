import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:farmus/common/tab_bar/farmclub_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub/component/farmclub_feed.dart';
import 'package:farmus/view/farmclub/component/farmclub_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FarmclubScreen extends ConsumerWidget {
  const FarmclubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: FarmusLogoAppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/image/ic_more_vertical.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/image/ic_exit.svg'),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: FarmclubProfile(),
            ),
            SizedBox(
              height: 16.0,
            ),
            FarmclubTabBar(),
            Divider(
              thickness: 6.0,
              color: FarmusThemeColor.gray7,
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '공개된 일기',
                        style: FarmusThemeTextStyle.gray1SemiBold17,
                      ),
                      Text(
                        '최신순',
                        style: FarmusThemeTextStyle.gray2Medium13,
                      ),
                    ],
                  ),
                  FarmclubFeed(),
                  SizedBox(
                    height: 16.0,
                  ),
                  FarmclubFeed(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
