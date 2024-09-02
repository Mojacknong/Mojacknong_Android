import 'package:farmus/model/my_farmclub/mission_data_model.dart';
import 'package:farmus/view/feed_detail/component/feed_detail_comment.dart';
import 'package:farmus/view/feed_detail/component/feed_detail_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/my_farmclub/mission_feed.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_farmclub/mission_comment_notifier.dart';
import '../../../view_model/my_farmclub/mission_feed_notifier.dart';

class MissionComment extends ConsumerWidget {
  const MissionComment({
    super.key,
    required this.missionPostCommentId,
    required this.commentCount,
    required this.myLike,
  });

  final int missionPostCommentId;
  final int commentCount;
  final bool myLike;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);

    final AsyncValue<List<MissionFeed>> missionFeed =
        ref.watch(missionFeedProvider(selectedFarmclubId));
    final AsyncValue<MissionDataModel> missionData =
        ref.watch(missionCommentNotifierProvider(missionPostCommentId));

    return missionFeed.when(
      data: (feeds) {
        if (feeds.isEmpty) {
          return const Center(child: Text('No feed data available.'));
        }

        final feed = feeds.firstWhere(
          (feed) => feed.missionPostId == missionPostCommentId,
          orElse: () => feeds[0],
        );

        return Column(
          children: [
            FeedDetailIcon(
              feedId: feed.missionPostId,
              commentCount: feed.commentCount,
              likeCount: feed.likeCount,
              myLike: feed.isLiked,
              type: "미션 인증",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(
                height: 1,
                color: FarmusThemeColor.gray4,
              ),
            ),
            Row(
              children: [
                const Text(
                  '댓글',
                  style: FarmusThemeTextStyle.gray1Medium15,
                ),
                const SizedBox(width: 4),
                Text(
                  '${feed.commentCount}',
                  style: FarmusThemeTextStyle.gray1Medium15,
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            missionData.when(
              data: (data) {
                final List<MissionCommentModel> comments = data.comments;

                return comments.isNotEmpty
                    ? Column(
                        children: comments.asMap().entries.map((entry) {
                          int idx = entry.key;
                          MissionCommentModel comment = entry.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: FeedDetailComment(
                              profileImage: comment.profileImage,
                              nickname: comment.nickname,
                              date: comment.date,
                              content: comment.content,
                              isLast: idx == comments.length - 1,
                              myComment: comment.isMyComment,
                              commentId: comment.missionPostCommentId,
                            ),
                          );
                        }).toList(),
                      )
                    : const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 24.0),
                          child: Text(
                            '작성된 댓글이 없어요',
                            style: FarmusThemeTextStyle.gray2Medium13,
                          ),
                        ),
                      );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
