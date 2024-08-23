import 'package:farmus/view_model/diary/diary_like_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/my_farmclub/mission_like_notifier.dart';

class FeedDetailIcon extends ConsumerWidget {
  const FeedDetailIcon({
    super.key,
    required this.feedId,
    required this.commentCount,
    required this.likeCount,
    required this.myLike,
    this.type,
  });

  final int feedId;
  final int commentCount;
  final int likeCount;
  final bool myLike;
  final String? type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: GestureDetector(
            onTap: () {
              if (type == "미션 인증") {
                myLike
                    ? ref
                    .read(missionLikeNotifierProvider.notifier)
                    .missionLikeDelete(feedId)
                    : ref
                    .read(missionLikeNotifierProvider.notifier)
                    .missionLike(feedId);
              } else {
                myLike
                    ? ref
                    .read(diaryLikeNotifierProvider.notifier)
                    .diaryLikeDelete(feedId)
                    : ref
                    .read(diaryLikeNotifierProvider.notifier)
                    .diaryLike(feedId);
              }
            },
            child: myLike
                ? SvgPicture.asset('assets/image/ic_heart_true.svg')
                : SvgPicture.asset('assets/image/ic_heart.svg'),
          ),
        ),
        Text(
          '$likeCount',
          style: FarmusThemeTextStyle.gray2Medium13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 4.0),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/image/ic_message_typing.svg'),
          ),
        ),
        Text(
          '$commentCount',
          style: FarmusThemeTextStyle.gray2Medium13,
        ),
      ],
    );
  }
}
