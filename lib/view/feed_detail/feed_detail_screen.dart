import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../vege_diary_detail/component/vege_diary_detail_content.dart';
import '../vege_diary_detail/component/vege_diary_detail_icon.dart';
import 'component/feed_comment.dart';

class FeedDetailScreen extends ConsumerWidget {
  const FeedDetailScreen({
    super.key,
    required this.diaryId,
    required this.nickname,
    this.profileImage,
    required this.writeDateTime,
    required this.content,
    required this.diaryImage,
    required this.commentCount,
    required this.likeCount,
    required this.myLike,
    required this.commentId,
  });

  final int diaryId;
  final String nickname;
  final String? profileImage;
  final String writeDateTime;
  final String content;
  final String diaryImage;
  final int commentCount;
  final int likeCount;
  final bool myLike;
  final int commentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeedProfile(
                      isDetail: false,
                      profileImage: profileImage,
                      nickname: nickname,
                      writeDateTime: writeDateTime,
                      myComment: false,
                      commentId: commentCount,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    VegeDiaryDetailContent(
                      content: content,
                      diaryImage: diaryImage,
                    ),
                    const SizedBox(
                      height: 64.0,
                    ),
                    VegeDiaryDetailIcon(
                      commentCount: commentCount,
                      likeCount: likeCount,
                      myLike: myLike,
                    ),
                    FeedComment(
                      diaryId: diaryId,
                      commentCount: commentCount,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
