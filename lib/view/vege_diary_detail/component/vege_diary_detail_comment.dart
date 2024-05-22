import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryDetailComment extends ConsumerWidget {
  const VegeDiaryDetailComment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedProfile(isDetail: true),
        SizedBox(
          height: 6.0,
        ),
        Text(
          '그건 당신이 최선을 다하지 않아서가 아닐까요? ^____^',
          style: FarmusThemeTextStyle.darkMedium14,
        ),
      ],
    );
  }
}
