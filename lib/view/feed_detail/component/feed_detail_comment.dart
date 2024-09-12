import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FeedDetailComment extends ConsumerWidget {
  const FeedDetailComment({
    super.key,
    this.profileImage,
    required this.nickname,
    required this.date,
    required this.content,
    this.isLast = false,
    required this.myComment,
    required this.commentId,
    required this.categoryType,
  });

  final String? profileImage;
  final String nickname;
  final String date;
  final String content;
  final bool isLast;
  final bool myComment;
  final int commentId;
  final String categoryType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedProfile(
          isDetail: true,
          nickname: nickname,
          writeDateTime: date,
          profileImage: profileImage,
          myComment: myComment,
          commentId: commentId,
          categoryType: categoryType,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          content,
          style: FarmusThemeTextStyle.darkMedium14,
        ),
        Padding(
          padding: EdgeInsets.only(top: isLast ? 24.0 : 12.0),
          child: isLast
              ? const SizedBox()
              : const Divider(
                  height: 1,
                  color: FarmusThemeColor.gray4,
                ),
        ),
      ],
    );
  }
}
