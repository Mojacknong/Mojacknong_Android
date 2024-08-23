import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_farmclub_repository.dart';

import 'mission_comment_notifier.dart';
import 'mission_feed_notifier.dart';

part 'mission_like_notifier.g.dart';

@riverpod
class MissionLikeNotifier extends _$MissionLikeNotifier {
  @override
  Future<void> build() async {
    return;
  }

  void _initDiary() {
    ref.invalidate(missionCommentNotifierProvider);
    ref.invalidate(missionFeedProvider);
    ref.invalidateSelf();
  }

  Future<void> missionLike(int missionPostId) async {
    await MyFarmclubRepository.missionLike(missionPostId);
    _initDiary();
  }

  Future<void> missionLikeDelete(int missionPostId) async {
    await MyFarmclubRepository.missionLikeDelete(missionPostId);
    _initDiary();
  }
}
