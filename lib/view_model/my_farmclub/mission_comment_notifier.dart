import 'dart:convert';

import 'package:farmus/model/my_farmclub/mission_data_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_farmclub_repository.dart';

part 'mission_comment_notifier.g.dart';

@riverpod
Future<MissionDataModel> missionCommentNotifier(
    MissionCommentNotifierRef ref, int missionPostId) async {
  final response = await MyFarmclubRepository.missionComment(missionPostId);

  final json = jsonDecode(response) as Map<String, dynamic>;

  final data = json['data'] as Map<String, dynamic>;

  final missionData = MissionDataModel.fromJson(data);

  return missionData;
}
