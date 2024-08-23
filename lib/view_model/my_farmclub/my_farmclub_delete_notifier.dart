import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/my_farmclub_model.dart';
import '../../repository/my_farmclub_repository.dart';
import 'farmclub_help_notifier.dart';
import 'farmclub_mission_certification_notifier.dart';
import 'my_farmclub_info_notifier.dart';
import 'my_farmclub_notifier.dart';

part 'my_farmclub_delete_notifier.g.dart';

@riverpod
class MyFarmclubDeleteNotifier extends _$MyFarmclubDeleteNotifier {
  int? selectedVeggieId;

  @override
  Future<MyFarmclubModel> build() async {
    return const MyFarmclubModel(
      farmClubId: -1,
      farmClubImage: '',
      farmClubName: '',
      veggieName: '',
    );
  }


  Future<void> myFarmclubDelete(int farmClubId) async {
    await MyFarmclubRepository.myFarmclubDelete(farmClubId);
    ref.invalidate(farmclubMissionCertificationNotifierProvider);
    ref.invalidate(myFarmclubInfoModelProvider);
    ref.invalidate(myFarmclubModelProvider);
    ref.invalidateSelf();
  }
}
