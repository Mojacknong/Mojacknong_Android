import 'package:farmus/view/mission_feed_detail/mission_feed_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vege_diary_detail/component/vege_diary_detail_content.dart';
import '../../vege_diary_detail/component/vege_diary_detail_icon.dart';
import 'feed_profile.dart';

class FarmclubFeed extends ConsumerWidget {
  const FarmclubFeed(
      {super.key,
      required this.nickname,
      this.profileImage,
      required this.writeDateTime,
      required this.content,
      required this.diaryImage,
      required this.commentCount,
      required this.likeCount,
      required this.myLike});

  final String nickname;
  final String? profileImage;
  final String writeDateTime;
  final String content;
  final String diaryImage;
  final int commentCount;
  final int likeCount;
  final bool myLike;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => MissionFeedDetailScreen(
                    nickname: nickname,
                    writeDateTime: writeDateTime,
                    profileImage: profileImage,
                    content: content,
                    diaryImage: diaryImage,
                    commentCount: commentCount,
                    likeCount: likeCount,
                    myLike: myLike,
                  ))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: FeedProfile(
              isDetail: false,
              nickname: nickname,
              writeDateTime: writeDateTime,
              profileImage: profileImage,
            ),
          ),
          VegeDiaryDetailContent(
            content: content,
            diaryImage: diaryImage,
          ),
          VegeDiaryDetailIcon(
            commentCount: commentCount,
            likeCount: likeCount,
            myLike: myLike,
          ),
          const SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}
