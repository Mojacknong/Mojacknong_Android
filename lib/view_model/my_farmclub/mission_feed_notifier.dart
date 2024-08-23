import 'dart:convert';

import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/mission_feed.dart';
import 'my_farmclub_notifier.dart';

part 'mission_feed_notifier.g.dart';

@riverpod
Future<List<MissionFeed>> missionFeed(
    MissionFeedRef ref, int? farmclubId) async {
  if (farmclubId == null) {
    final farmclubList = await ref.watch(myFarmclubModelProvider.future);
    farmclubId = farmclubList.first.farmClubId.toInt();
  }

  final response = await MyFarmclubRepository.farmclubMission(farmclubId);
  final json = jsonDecode(response);
  final data = json['data'] as Map<String, dynamic>;
  final dataList = data['missionPosts'] as List<dynamic>;

  final List<MissionFeed> missionFeed = dataList
      .map((data) => MissionFeed.fromJson(data as Map<String, dynamic>))
      .toList();

  return missionFeed;
}
