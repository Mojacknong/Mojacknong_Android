import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_delete_notifier.g.dart';

@riverpod
class DiaryCommentDeleteNotifier extends _$DiaryCommentDeleteNotifier {
  @override
  Future<String> build() async {
    return '';
  }

  Future<void> diaryCommentDelete(int diaryCommentId) async {
    await MyVeggieGardenRepository.diaryCommentDelete(diaryCommentId);

    state = const AsyncData('');
  }
}
