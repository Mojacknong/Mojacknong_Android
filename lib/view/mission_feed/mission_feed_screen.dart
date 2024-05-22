import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/mission_feed/component/mission_feed_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionFeedScreen extends ConsumerWidget {
  const MissionFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
        appBar: BackLeftTitleAppBar(
          title: '미션 피드',
        ),
        body: MissionFeedTabBar());
  }
}
