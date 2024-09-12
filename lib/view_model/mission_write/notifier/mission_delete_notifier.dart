import 'package:farmus/view_model/my_farmclub/farmclub_mission_certification_notifier.dart';
import 'package:farmus/view_model/my_farmclub/mission_feed_notifier.dart';
import 'package:farmus/view_model/my_farmclub/my_farmclub_notifier.dart';
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
    ref.invalidate(missionFeedProvider);
    // ref.invalidate(myFarmclubModelProvider);
    ref.invalidate(farmclubMissionCertificationNotifierProvider);
    ref.invalidateSelf();
  }
}
