import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/farmclub/component/feed_profile.dart';
import '../view/feed_detail/component/feed_detail_content.dart';
import '../view/feed_detail/component/feed_detail_icon.dart';
import '../view/feed_detail/feed_detail_screen.dart';

class FarmusFeed extends ConsumerWidget {
  const FarmusFeed({
    super.key,
    required this.feedId,
    required this.nickname,
    this.profileImage,
    required this.writeDateTime,
    required this.content,
    required this.image,
    required this.commentCount,
    required this.likeCount,
    required this.myLike,
    required this.categoryType,
    this.state,
    required this.myPost
  });

  final int feedId;
  final String nickname;
  final String? profileImage;
  final String writeDateTime;
  final String content;
  final String image;
  final int commentCount;
  final int likeCount;
  final bool myLike;
  final String? state;
  final String categoryType;
  final bool myPost;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => FeedDetailScreen(
                    feedId: feedId,
                    nickname: nickname,
                    writeDateTime: writeDateTime,
                    profileImage: profileImage,
                    content: content,
                    image: image,
                    commentCount: commentCount,
                    likeCount: likeCount,
                    myLike: myLike,
                    state: state,
                    categoryType: categoryType,
                    myPost: myPost,
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
              myComment: false,
              myPost: false,
              commentId: -1,
              feedId : -1,
              categoryType: categoryType,
            ),
          ),
          FeedDetailContent(
            content: content,
            image: image,
          ),
          FeedDetailIcon(
            feedId: feedId,
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
