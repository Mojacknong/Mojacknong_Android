import 'dart:convert';

import 'package:farmus/model/my_farmclub/farmclub_help_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:farmus/view_model/my_farmclub/my_farmclub_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/search/farmclub_help_info_model.dart';

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

  if (json['data'] == null) {
    throw Exception("데이터가 없습니다.");
  }

  final data = json['data'] as Map<String, dynamic>;

  if (data['help'] == null || data['steps'] == null) {
    throw Exception("도움말이 없습니다.");
  }

  final farmclubHelpInfoModel =
      FarmclubHelpInfoModel.fromJson(data['help'] as Map<String, dynamic>);
  final steps = (data['steps'] as List<dynamic>)
      .map((e) => HelpStep.fromJson(e as Map<String, dynamic>))
      .toList();

  return FarmclubHelpModel(
    farmclubHelpInfoModel: farmclubHelpInfoModel,
    steps: steps,
  );
}
