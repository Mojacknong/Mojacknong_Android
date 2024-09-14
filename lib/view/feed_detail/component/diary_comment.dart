import 'package:farmus/model/diary/diary_comment_model.dart';
import 'package:farmus/view/feed_detail/component/feed_detail_comment.dart';
import 'package:farmus/view/feed_detail/component/feed_detail_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/diary/diary_comment_notifier.dart';

class DiaryComment extends ConsumerWidget {
  const DiaryComment({
    super.key,
    required this.diaryId,
    required this.commentCount,
    required this.myLike,
  });

  final int diaryId;
  final int commentCount;
  final bool myLike;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DiaryDataModel> diaryComments =
        ref.watch(diaryCommentNotifierProvider(diaryId));

    return Column(
      children: [
        diaryComments.when(
          data: (commentsData) => Column(
            children: [
              FeedDetailIcon(
                feedId: diaryId,
                commentCount: commentsData.commentCount,
                likeCount: commentsData.likeCount,
                myLike: commentsData.myLike,
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
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '${commentsData.commentCount}',
                    style: FarmusThemeTextStyle.gray1Medium15,
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              commentsData.diaryCommentContent.isNotEmpty
                  ? Column(
                      children: commentsData.diaryCommentContent
                          .asMap()
                          .entries
                          .map((entry) {
                        int idx = entry.key;
                        DiaryCommentModel comment = entry.value;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: FeedDetailComment(
                            profileImage: comment.profileImage,
                            nickname: comment.nickname,
                            date: comment.date,
                            content: comment.content,
                            isLast: idx ==
                                commentsData.diaryCommentContent.length - 1,
                            myComment: comment.myComment,
                            commentId: comment.commentId,
                            feedId: -1,
                            categoryType: "diary",
                            myPost: true,
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
                    ),
            ],
          ),
          loading: () => Container(),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ],
    );
  }
}
