import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_farmclub_repository.dart';

part 'mission_comment_report_notifier.g.dart';

@riverpod
Future<String> missionCommentReportNotifier(
    MissionCommentReportNotifierRef ref, int missionPostCommentId, String reason) async {
  final response =
  await MyFarmclubRepository.missionCommentReport(missionPostCommentId, reason);
  return response;

}
