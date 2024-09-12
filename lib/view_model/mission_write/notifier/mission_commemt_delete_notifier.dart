import 'package:farmus/view_model/my_farmclub/mission_comment_add_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/my_farmclub_service.dart';
import '../../my_farmclub/mission_comment_notifier.dart';
import '../../my_farmclub/mission_feed_notifier.dart';

part 'mission_commemt_delete_notifier.g.dart';

@riverpod
class MissionCommentDeleteNotifier extends _$MissionCommentDeleteNotifier {
  @override
  Future<String> build() async {
    return '';
  }

  Future<void> missionCommentDelete(int missionPostCommentId) async {
    await MyFarmclubService().missionCommentDelete(missionPostCommentId);

    state = const AsyncData('');

    ref.invalidate(missionCommentNotifierProvider);
    ref.invalidate(missionCommentAddNotifierProvider);
    ref.invalidate(missionFeedProvider);
    ref.invalidateSelf();
  }
}
