import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:farmus/view/mission_feed_detail/component/feed_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../vege_diary_detail/component/vege_diary_detail_content.dart';
import '../vege_diary_detail/component/vege_diary_detail_icon.dart';

class MissionFeedDetailScreen extends ConsumerWidget {
  const MissionFeedDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeedProfile(
                      isDetail: false,
                      nickname: '',
                      writeDateTime: '',
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    VegeDiaryDetailContent(
                      content: 'content',
                    ),
                    SizedBox(
                      height: 64.0,
                    ),
                    VegeDiaryDetailIcon(
                      commentCount: 0,
                      likeCount: 0,
                      myLike: false,
                    ),
                    FeedComment(),
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
