import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryDetailComment extends ConsumerWidget {
  const VegeDiaryDetailComment({
    super.key,
    this.profileImage,
    required this.nickname,
    required this.date,
    required this.content,
  });

  final String? profileImage;
  final String nickname;
  final String date;
  final String content;

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
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          content,
          style: FarmusThemeTextStyle.darkMedium14,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            height: 1,
            color: FarmusThemeColor.gray4,
          ),
        ),
      ],
    );
  }
}
