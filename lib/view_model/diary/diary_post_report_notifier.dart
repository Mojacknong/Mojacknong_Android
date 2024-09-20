import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/diary/farmclub_open_diary_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_post_report_notifier.g.dart';

@riverpod
Future<String> diaryPostReportNotifier(
    DiaryPostReportNotifierRef ref, int diaryId, String reason) async {
  final response =
      await MyVeggieGardenRepository.diaryPostReport(diaryId, reason);
  ref.invalidate(farmclubOpenDiaryModelProvider);
  return response;
}
