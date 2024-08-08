import 'package:farmus/model/diary/diary_comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/diary/diary_comment_notifier.dart';
import '../../vege_diary_detail/component/vege_diary_detail_comment.dart';

class FeedComment extends ConsumerWidget {
  const FeedComment({
    super.key,
    required this.diaryId,
    required this.commentCount,
  });

  final int diaryId;
  final int commentCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<DiaryCommentModel>> diaryComments =
        ref.watch(diaryCommentNotifierProvider(diaryId));

    return Column(
      children: [
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
              '$commentCount',
              style: FarmusThemeTextStyle.gray1Medium15,
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        diaryComments.when(
          data: (comments) => comments.isNotEmpty
              ? Column(
                  children: comments.asMap().entries.map((entry) {
                    int idx = entry.key;
                    DiaryCommentModel comment = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: VegeDiaryDetailComment(
                        profileImage: comment.profileImage,
                        nickname: comment.nickname,
                        date: comment.date,
                        content: comment.content,
                        isLast: idx == comments.length - 1,
                        myComment: comment.myComment,
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
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ],
    );
  }
}
