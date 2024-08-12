import 'package:farmus/model/diary/diary_comment_add_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/diary/diary_comment_notifier.dart';
import 'package:farmus/view_model/diary/farmclub_open_diary_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_add_notifier.g.dart';

@riverpod
class DiaryCommentAddNotifier extends _$DiaryCommentAddNotifier {
  @override
  Future<DiaryCommentAddModel> build() async {
    return DiaryCommentAddModel(comment: '', isNotEmpty: false);
  }

  void updateComment(String comment) {
    state = AsyncData(
      DiaryCommentAddModel(
          comment: comment, isNotEmpty: comment.isNotEmpty && comment != ''),
    );
  }

  Future<void> addDiaryComment(int diaryId) async {
    await MyVeggieGardenRepository.diaryCommentAdd(
        diaryId, state.value!.comment);

    state = AsyncData(DiaryCommentAddModel(comment: '', isNotEmpty: false));
    ref.invalidate(diaryCommentNotifierProvider);
    ref.invalidate(farmclubOpenDiaryModelProvider);
    ref.invalidateSelf();
  }
}
