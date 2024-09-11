import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/my_farmclub/mission_comment_add_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../my_farmclub/mission_comment_notifier.dart';



part 'mission_commemt_delete_notifier.g.dart';

@riverpod
class MissionCommentDeleteNotifier extends _$MissionCommentDeleteNotifier {
  @override
  Future<String> build() async {
    return '';
  }

  Future<void> diaryCommentDelete(int diaryCommentId) async {
    await MyVeggieGardenRepository.diaryCommentDelete(diaryCommentId);

    state = const AsyncData('');

    ref.invalidate(missionCommentNotifierProvider);
    ref.invalidate(missionCommentAddNotifierProvider);
  }
}
