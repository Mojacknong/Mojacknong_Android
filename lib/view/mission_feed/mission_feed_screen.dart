import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/mission_write/component/mission_step_info.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MissionStepInfo(stepNum: 3, isButton: true,),
            ),
          ],
        ),
      ),
    );
  }
}
