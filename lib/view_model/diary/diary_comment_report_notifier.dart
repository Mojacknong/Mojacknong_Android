import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_report_notifier.g.dart';

@riverpod
Future<String> diaryCommentReportNotifier(
    DiaryCommentReportNotifierRef ref, int commentId, String reason) async {
  final response =
      await MyVeggieGardenRepository.diaryCommentReport(commentId, reason);
  return response;
}
