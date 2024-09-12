import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/bottom_sheet/show_farmus_bottom_sheet.dart';
import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FeedProfile extends ConsumerWidget {
  const FeedProfile({
    super.key,
    this.profileImage,
    required this.isDetail,
    required this.nickname,
    required this.writeDateTime,
    required this.myComment,
    required this.myPost,
    required this.commentId,
    this.feedId,
    required this.categoryType,
  });

  final String? profileImage;
  final bool isDetail;
  final String nickname;
  final String writeDateTime;
  final bool myComment;
  final bool myPost;
  final int commentId;
  final int? feedId;
  final String categoryType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        FarmusPictureFix(
          image: profileImage,
          size: isDetail ? 32.0 : 36.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nickname,
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                    if (isDetail)
                      GestureDetector(
                        onTap: () {
                          if (myComment) {
                            showDeleteBottomSheet(
                              context,
                              commentId,
                              null,
                              '댓글',
                              categoryType,
                            );
                          } else if (myPost) {
                            showDeleteBottomSheet(
                              context,
                              feedId!,
                              null,
                              '게시물',
                              categoryType,
                            );
                          } else {
                            showReportBottomSheet(
                              context,
                              myComment ? '댓글 신고' : '게시물 신고',
                              myPost
                                  ? '댓글을 신고했어요'
                                  : '게시물을 신고했어요',
                            );
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/image/ic_more_vertical.svg',
                        ),
                      ),
                  ],
                ),
                Text(
                  writeDateTime,
                  style: FarmusThemeTextStyle.gray2Medium13,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
