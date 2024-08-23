import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/farmclub_success_model.dart';
import '../../repository/my_farmclub_repository.dart';
import 'my_farmclub_notifier.dart';

part 'farmclub_success_info_notifier.g.dart';

@riverpod
Future<FarmclubSuccessModel> farmclubSuccessModel(
    FarmclubSuccessModelRef ref, int? farmClubId) async {
  if (farmClubId == null) {
    final farmclubList = await ref.watch(myFarmclubModelProvider.future);
    farmClubId = farmclubList.first.farmClubId.toInt();
  }
  final response = await MyFarmclubRepository.getMissionSuccess(farmClubId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as  Map<String, dynamic>;

  final FarmclubSuccessModel farmclub = FarmclubSuccessModel.fromJson(data);
  return farmclub;

}
