import 'package:farmus/repository/my_history_repository.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/diary/diary_check_notifier.dart';
import 'package:farmus/view_model/my_farmclub/mission_feed_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/my_farmclub_service.dart';


part 'mission_delete_notifier.g.dart';

@riverpod
class DiaryDeleteNotifier extends _$DiaryDeleteNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> missionDelete(int missionPostId) async {
    await MyFarmclubService().missionDelete(missionPostId);
    ref.invalidate(missionFeedProvider);
    ref.invalidateSelf();
  }
}
