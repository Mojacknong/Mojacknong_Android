import 'package:farmus/view_model/mission_write/notifier/mission_commemt_delete_notifier.dart';
import 'package:farmus/view_model/my_farmclub/mission_comment_add_notifier.dart';
import 'package:farmus/view_model/my_farmclub/mission_feed_notifier.dart';
import 'package:farmus/view_model/my_farmclub/mission_like_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/my_farmclub_service.dart';

part 'mission_delete_notifier.g.dart';

@riverpod
class MissionDeleteNotifier extends _$MissionDeleteNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> missionDelete(int missionPostId) async {
    await MyFarmclubService().missionDelete(missionPostId);
    ref.invalidate(missionCommentDeleteNotifierProvider);
    ref.invalidate(missionFeedProvider);
    ref.invalidateSelf();
  }
}
