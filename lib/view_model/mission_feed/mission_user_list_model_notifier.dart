import 'dart:convert';

import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/mission/mission_user_list_model.dart';
import '../my_farmclub/my_farmclub_notifier.dart';

part 'mission_user_list_model_notifier.g.dart';

@riverpod
Future<List<MissionUserListModel>> missionUserListModel(
    MissionUserListModelRef ref, int? farmClubId) async {
  if (farmClubId == null) {
    final farmClubList = await ref.watch(myFarmclubModelProvider.future);
    farmClubId = farmClubList.first.farmClubId.toInt();
  }

  final response = await MyFarmclubRepository.farmclubUserList(farmClubId);
  final json = jsonDecode(response);
  final data = json['data'] as Map<String, dynamic>;
  final dataList = data['userList'] as List<dynamic>;

  final List<MissionUserListModel> missionUserList = dataList
      .map((data) => MissionUserListModel.fromJson(data as Map<String, dynamic>))
      .toList();

  return missionUserList;
}
