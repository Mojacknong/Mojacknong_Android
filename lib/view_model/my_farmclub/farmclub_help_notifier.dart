import 'dart:convert';

import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/farmclub_help_model.dart';
import 'my_farmclub_notifier.dart';

part 'farmclub_help_notifier.g.dart';

@riverpod
Future<FarmclubHelpModel> farmclubHelpModel(
    FarmclubHelpModelRef ref, int? farmclubId) async {
  if (farmclubId == null) {
    final farmclubs = await ref.watch(myFarmclubModelProvider.future);
    farmclubId = farmclubs.first.farmClubId.toInt();
  }

  final response = await MyFarmclubRepository.farmclubHelp(farmclubId);
  final json = jsonDecode(response) as Map<String, dynamic>;

  final farmclubHelpModel =
      FarmclubHelpModel.fromJson(json['data'] as Map<String, dynamic>);
  return farmclubHelpModel;
}
