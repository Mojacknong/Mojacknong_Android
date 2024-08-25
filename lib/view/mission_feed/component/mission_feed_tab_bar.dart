import 'package:farmus/common/farmus_feed.dart';
import 'package:farmus/model/my_farmclub/mission_feed.dart';
import 'package:farmus/view_model/my_farmclub/mission_feed_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/tab_bar/primary_tab_bar.dart';
import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../mission_write/component/mission_step_info.dart';
import 'mission_feed_basic_profile.dart';
import 'mission_feed_select_profile.dart';

class MissionFeedTabBar extends ConsumerWidget {
  const MissionFeedTabBar({super.key, required this.farmclubInfo});

  final MyFarmclubInfoModel farmclubInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<List<MissionFeed>> missionFeed =
        ref.watch(missionFeedProvider(selectedFarmclubId));

    List<Widget> tabViews = [];

    tabViews.add(
      missionFeed.when(
        data: (feeds) => SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: feeds.map((feed) {
                    return FarmusFeed(
                        feedId: feed.missionPostId,
                        profileImage: feed.profileImage,
                        nickname: feed.nickname,
                        writeDateTime: feed.date,
                        content: feed.content,
                        image: feed.image,
                        commentCount: feed.commentCount,
                        likeCount: feed.likeCount,
                        myLike: feed.isLiked);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );

    for (var step in farmclubInfo.steps) {
      tabViews.add(
        missionFeed.when(
          data: (feeds) {
            final stepFeeds =
                feeds.where((feed) => feed.stepNum == step.stepNum).toList();

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    MissionStepInfo(
                      step: step,
                      isButton: true,
                    ),
                    const SizedBox(height: 16.0),
                    ...stepFeeds.map((feed) {
                      return FarmusFeed(
                          feedId: feed.missionPostId,
                          profileImage: feed.profileImage,
                          nickname: feed.nickname,
                          writeDateTime: feed.date,
                          content: feed.content,
                          image: feed.image,
                          commentCount: feed.commentCount,
                          likeCount: feed.likeCount,
                          myLike: feed.isLiked);
                    }),
                  ],
                ),
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
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
