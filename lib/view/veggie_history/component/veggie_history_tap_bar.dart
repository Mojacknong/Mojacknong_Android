import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../my_page/my_page_feed/my_page_diary_list.dart';
import '../../my_page/my_page_feed/my_page_result_list.dart';

class VeggieHistoryTabBar extends ConsumerStatefulWidget {
  final String detailId;

  const VeggieHistoryTabBar({
    Key? key,
    required this.detailId,
  }) : super(key: key);

  @override
  _VeggieHistoryTabBarState createState() => _VeggieHistoryTabBarState();
}

class _VeggieHistoryTabBarState extends ConsumerState<VeggieHistoryTabBar> {
  @override
  Widget build(BuildContext context) {
    return PrimaryTabBar(
      tab: const ["성장일기", "재배결과"],
      tabView: [
        MyPageDiaryList(detailId: widget.detailId),
        MyPageResultList(detailId: widget.detailId),
      ],
      labelStyle: FarmusThemeTextStyle.darkSemiBold15,
      unselectedLabelStyle: FarmusThemeTextStyle.gray3SemiBold15,
    );
  }
}
