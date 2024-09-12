import 'package:farmus/common/content_empty.dart';
import 'package:farmus/common/farmus_feed.dart';
import 'package:farmus/model/my_farmclub/mission_feed.dart';
import 'package:farmus/view_model/my_farmclub/mission_feed_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/tab_bar/primary_tab_bar.dart';
import '../../../model/mission/mission_user_list_model.dart';
import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/mission_feed/mission_user_list_model_notifier.dart';
import '../../mission_write/component/mission_step_info.dart';
import 'mission_feed_select_profile.dart';

class MissionFeedTabBar extends ConsumerStatefulWidget {
  const MissionFeedTabBar({super.key, required this.farmclubInfo});

  final MyFarmclubInfoModel farmclubInfo;

  @override
  _MissionFeedTabBarState createState() => _MissionFeedTabBarState();
}

class _MissionFeedTabBarState extends ConsumerState<MissionFeedTabBar> {
  int? selectedUserId;

  @override
  Widget build(BuildContext context) {
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<List<MissionFeed>> missionFeed =
        ref.watch(missionFeedProvider(selectedFarmclubId));

    final AsyncValue<List<MissionUserListModel>> missionUserList =
        ref.watch(missionUserListModelProvider(selectedFarmclubId));

    List<Widget> tabViews = [];

    tabViews.add(
      missionFeed.when(
        data: (feeds) {
          List<MissionFeed> filteredFeeds = selectedUserId != null
              ? feeds.where((feed) => feed.userId == selectedUserId).toList()
              : feeds;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        missionUserList.when(
                          data: (users) {
                            final myUserId = ref.watch(
                                missionUserListModelProvider(
                                    selectedFarmclubId));

                            final otherUsers = users
                                .where((user) => user.userId != myUserId)
                                .toList();

                            List<MissionUserListModel> sortedUsers = [
                              ...otherUsers,
                            ];

                            return Row(
                              children: sortedUsers.map((user) {
                                bool isSelected = selectedUserId == user.userId;

                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (selectedUserId == user.userId) {
                                        selectedUserId = null;
                                      } else {
                                        selectedUserId = user.userId;
                                      }
                                    });
                                  },
                                  child: MissionFeedSelectProfile(
                                    user: user,
                                    isSelected: isSelected,
                                  ),
                                );
                              }).toList(),
                            );
                          },
                          loading: () => const CircularProgressIndicator(),
                          error: (err, stack) => Text('Error: $err'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: filteredFeeds.isEmpty
                        ? const [
                            SizedBox(
                              width: double.infinity,
                              child: ContentEmpty(
                                text: '아직 미션을 완료하지 않았어요',
                                padding: 48.0,
                              ),
                            )
                          ]
                        : filteredFeeds.map((feed) {
                            final user = missionUserList.value?.first;

                            return FarmusFeed(
                              feedId: feed.missionPostId,
                              profileImage: feed.profileImage,
                              nickname: feed.nickname,
                              writeDateTime: feed.date,
                              content: feed.content,
                              image: feed.image,
                              commentCount: feed.commentCount,
                              likeCount: feed.likeCount,
                              myLike: feed.isLiked,
                              categoryType: 'mission',
                              myPost: user?.userId == feed.userId,
                            );
                          }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );

    for (var step in widget.farmclubInfo.steps) {
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
                    stepFeeds.isEmpty
                        ? const SizedBox(
                            width: double.infinity,
                            child: ContentEmpty(
                              text: '아직 미션을 완료한 파머가 없어요',
                              padding: 48.0,
                            ),
                          )
                        : Column(
                            children: stepFeeds.map((feed) {
                              final user = missionUserList.value?.first;

                              return FarmusFeed(
                                feedId: feed.missionPostId,
                                profileImage: feed.profileImage,
                                nickname: feed.nickname,
                                writeDateTime: feed.date,
                                content: feed.content,
                                image: feed.image,
                                commentCount: feed.commentCount,
                                likeCount: feed.likeCount,
                                myLike: feed.isLiked,
                                categoryType: 'mission',
                                myPost: user?.userId == feed.userId,
                              );
                            }).toList(),
                          ),
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
          widget.farmclubInfo.steps
              .map((step) => 'Step ${step.stepNum}')
              .toList(),
      tabView: tabViews,
    );
  }
}
