import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../vege_diary_detail/component/vege_diary_detail_comment.dart';

class FeedComment extends ConsumerWidget {
  const FeedComment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            height: 1,
            color: FarmusThemeColor.gray4,
          ),
        ),
        Row(
          children: [
            Text(
              '댓글',
              style: FarmusThemeTextStyle.gray1Medium15,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '2',
              style: FarmusThemeTextStyle.gray1Medium15,
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        VegeDiaryDetailComment(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            height: 1,
            color: FarmusThemeColor.gray4,
          ),
        ),
        VegeDiaryDetailComment(),
      ],
    );
  }
}
