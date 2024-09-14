import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_farmclub_repository.dart';

part 'mission_post_report_notifier.g.dart';

@riverpod
Future<String> missionPostReportModel(
    MissionPostReportModelRef ref, int missionPostId, String reason) async {
  final response =
      await MyFarmclubRepository.missionReport(missionPostId, reason);
  return response;

}
