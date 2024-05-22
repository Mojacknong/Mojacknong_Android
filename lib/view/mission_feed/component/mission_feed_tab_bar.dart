import 'package:farmus/view/mission_feed/component/mission_feed_basic_profile.dart';
import 'package:farmus/view/mission_feed/component/mission_feed_my_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/tab_bar/primary_tab_bar.dart';
import '../../farmclub/component/farmclub_feed.dart';
import '../../mission_write/component/mission_step_info.dart';

class MissionFeedTabBar extends ConsumerWidget {
  const MissionFeedTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const PrimaryTabBar(
      tab: ['전체', 'Step 1', 'Step 2', 'Step 3', 'Step 4', 'Step 5'],
      tabView: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MissionFeedMyProfile(),
                      MissionFeedBasicProfile(
                        nickname: '감자',
                      ),
                      MissionFeedBasicProfile(
                        nickname: '홈프로텍터',
                      ),
                      MissionFeedBasicProfile(
                        nickname: '갓팜',
                      ),
                      MissionFeedBasicProfile(
                        nickname: '푸우',
                      ),
                      MissionFeedBasicProfile(
                        nickname: '종강언제함',
                      ),
                      MissionFeedBasicProfile(
                        nickname: '배고파',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(children: [
                  FarmclubFeed(),
                  FarmclubFeed(),
                  FarmclubFeed(),
                  FarmclubFeed(),
                ],),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  stepNum: 1,
                  isButton: true,
                ),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  stepNum: 2,
                  isButton: true,
                ),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  stepNum: 3,
                  isButton: true,
                ),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  stepNum: 4,
                  isButton: true,
                ),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                MissionStepInfo(
                  stepNum: 5,
                  isButton: true,
                ),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
                FarmclubFeed(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
