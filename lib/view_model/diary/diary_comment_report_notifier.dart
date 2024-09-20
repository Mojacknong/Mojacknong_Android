import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/diary/diary_comment_notifier.dart';
import 'package:farmus/view_model/diary/farmclub_open_diary_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_report_notifier.g.dart';

@riverpod
Future<String> diaryCommentReportNotifier(
    DiaryCommentReportNotifierRef ref, int commentId, String reason) async {
  final response =
      await MyVeggieGardenRepository.diaryCommentReport(commentId, reason);
  ref.invalidate(diaryCommentNotifierProvider);
  ref.invalidate(farmclubOpenDiaryModelProvider);
  return response;
}
