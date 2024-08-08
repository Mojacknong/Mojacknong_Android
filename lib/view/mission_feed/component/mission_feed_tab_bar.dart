import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/tab_bar/primary_tab_bar.dart';
import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../farmclub/component/farmclub_feed.dart';
import '../../mission_write/component/mission_step_info.dart';
import 'mission_feed_basic_profile.dart';
import 'mission_feed_select_profile.dart';

class MissionFeedTabBar extends ConsumerWidget {
  const MissionFeedTabBar({super.key, required this.farmclubInfo});

  final MyFarmclubInfoModel farmclubInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> tabViews = [
      const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MissionFeedSelectProfile(),
                    MissionFeedBasicProfile(nickname: '감자'),
                    MissionFeedBasicProfile(nickname: '홈프로텍터'),
                    MissionFeedBasicProfile(nickname: '갓팜'),
                    MissionFeedBasicProfile(nickname: '푸우'),
                    MissionFeedBasicProfile(nickname: '종강언제함'),
                    MissionFeedBasicProfile(nickname: '배고파'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    ];
    for (var step in farmclubInfo.steps) {
      tabViews.add(
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  step: step,
                  isButton: true,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return PrimaryTabBar(
      tab: ['전체'] +
          farmclubInfo.steps.map((step) => 'Step ${step.stepNum}').toList(),
      tabView: tabViews,
    );
  }
}
