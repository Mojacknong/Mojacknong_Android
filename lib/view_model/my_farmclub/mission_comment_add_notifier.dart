import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/mission_commment_add_model.dart';
import 'mission_comment_notifier.dart';
import 'mission_feed_notifier.dart';

part 'mission_comment_add_notifier.g.dart';

@riverpod
class MissionCommentAddNotifier extends _$MissionCommentAddNotifier {
  @override
  Future<MissionCommentAddModel> build() async {
    return MissionCommentAddModel(
        comment: '', isNotEmpty: false, missionPostId: -1);
  }

  void updateComment(String comment) {
    state = AsyncData(
      MissionCommentAddModel(
          comment: comment, isNotEmpty: comment.isNotEmpty && comment != ''),
    );
  }

  Future<void> addMissionComment(int missionPostId) async {
    await MyFarmclubRepository.missionCommentAdd(
        missionPostId, state.value!.comment);

    state = AsyncData(MissionCommentAddModel(comment: '', isNotEmpty: false));
    ref.invalidate(missionCommentNotifierProvider);
    ref.invalidate(missionFeedProvider);
    ref.invalidateSelf();
  }
}
