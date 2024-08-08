import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../vege_diary_detail/component/vege_diary_detail_comment.dart';

class FeedComment extends ConsumerWidget {
  const FeedComment({super.key, required this.commentCount});

  final int commentCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        const VegeDiaryDetailComment(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            height: 1,
            color: FarmusThemeColor.gray4,
          ),
        ),
        const VegeDiaryDetailComment(),
      ],
    );
  }
}
