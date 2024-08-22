import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/mission/mission_write_model.dart';

part 'farmclub_mission_certification_notifier.g.dart';

@riverpod
class FarmclubMissionCertificationNotifier
    extends _$FarmclubMissionCertificationNotifier {
  @override
  Future<MissionWriteModel> build() async {
    return MissionWriteModel(content: '', file: XFile(''), isComplete: false, farmClubId: 0);
  }

  Future<void> postMissionCertification(
      MissionWriteModel mission, int farmclubId, int stepNum) async {
    await MyFarmclubRepository.farmclubMissionCertification(mission, 5, 1);
  }
}
