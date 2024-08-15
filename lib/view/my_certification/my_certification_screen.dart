import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_farmclub_history/my_farmclub_certification_model.dart';
import '../../view_model/my_farmclub_history/my_farmclub_certification_provider.dart';
import '../../common/app_bar/back_left_title_app_bar.dart';
import '../../view/my_certification/component/my_certification_feed.dart';
import '../../view/my_farmclub/component/farmclub_history_profile.dart';

class MyCertificationScreen extends ConsumerWidget {
  final String detailId;
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  MyCertificationScreen({
    Key? key,
    required this.detailId,
    this.veggieName,
    this.veggieType,
    this.periodStart,
    this.periodEnd,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<MyFarmclubCertificationModel> certificationData = ref.watch(myFarmclubCertificationModelProvider(detailId));

    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "나의 인증",
      ),
      body: certificationData.when(
        data: (data) {
          final missionPosts = data.missionPosts;

          return SingleChildScrollView(
            child: Column(
              children: [
                IgnorePointer(ignoring: true, child: FarmclubHistoryProfile(
                  detailId: detailId,
                ),),
                ...missionPosts.map((post) => MyCertificationFeed(
                  content: post.content,
                  title: post.stepName,
                  step: post.stepNum.toString(),
                  image: post.postImage,
                  time : post.date
                )).toList(),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
