import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/view/mission_feed/component/mission_feed_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionFeedScreen extends ConsumerWidget {
  const MissionFeedScreen({super.key, required this.farmclubInfo});

  final MyFarmclubInfoModel farmclubInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: const BackLeftTitleAppBar(
          title: '미션 피드',
        ),
        body: MissionFeedTabBar(
          farmclubInfo: farmclubInfo,
        ));
  }
}
