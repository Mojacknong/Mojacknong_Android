import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'diary_comment_notifier.dart';
import 'farmclub_open_diary_notifier.dart';

part 'diary_like_notifier.g.dart';

@riverpod
class DiaryLikeNotifier extends _$DiaryLikeNotifier {
  @override
  Future<void> build() async {
    return;
  }

  void _initDiary() {
    ref.invalidate(diaryCommentNotifierProvider);
    ref.invalidate(farmclubOpenDiaryModelProvider);
    ref.invalidateSelf();
  }

  Future<void> diaryLike(int diaryId) async {
    await MyVeggieGardenRepository.diaryLike(diaryId);
    _initDiary();
  }

  Future<void> diaryLikeDelete(int diaryId) async {
    await MyVeggieGardenRepository.diaryLikeDelete(diaryId);
    _initDiary();
  }
}
