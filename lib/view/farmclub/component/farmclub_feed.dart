import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/view/mission_feed_detail/mission_feed_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vege_diary_detail/component/vege_diary_detail_content.dart';
import '../../vege_diary_detail/component/vege_diary_detail_icon.dart';
import 'feed_profile.dart';


class FarmclubFeed extends ConsumerWidget {
  const FarmclubFeed({super.key, required this.farmclubInfoModel});

  final MyFarmclubInfoModel farmclubInfoModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const MissionFeedDetailScreen())),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: FeedProfile(
              isDetail: false,
            ),
          ),
          VegeDiaryDetailContent(),
          VegeDiaryDetailIcon(),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}