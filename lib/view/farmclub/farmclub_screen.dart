import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/bottom_sheet/show_farmus_bottom_sheet.dart';
import '../../common/tab_bar/farmclub_tab_bar.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import '../my_farmclub/component/farmclub_profile.dart';
import 'component/farmclub_feed.dart';

class FarmclubScreen extends ConsumerWidget {
  const FarmclubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: FarmusLogoAppBar(
        actions: [
          GestureDetector(
            onTap: () {
              showFarmclubExitBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/image/ic_exit.svg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        // child: FarmclubEmpty(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: () {
                showFarmclubChangeBottomSheet(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubProfile(),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const FarmclubTabBar(),
            const Divider(
              thickness: 6.0,
              color: FarmusThemeColor.gray7,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Padding(
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
