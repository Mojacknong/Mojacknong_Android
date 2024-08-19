import 'dart:convert';
import 'package:farmus/model/my_farmclub/farmclub_help_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/search/farmclub_help_info_model.dart';
import 'my_farmclub_notifier.dart';

part 'farmclub_help_notifier.g.dart';

@riverpod
class FarmclubHelpNotifier extends _$FarmclubHelpNotifier {
  @override
  Future<FarmclubHelpModel> build(int? farmclubId) async {
    return await _fetchFarmclubHelpModel(farmclubId);
  }

  Future<FarmclubHelpModel> _fetchFarmclubHelpModel(int? farmclubId) async {
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

    final help = FarmclubHelpInfoModel.fromJson(data['help'] as Map<String, dynamic>);
    final steps = (data['steps'] as List<dynamic>)
        .map((e) => HelpStep.fromJson(e as Map<String, dynamic>))
        .toList();

    return FarmclubHelpModel(
      veggieName: data['veggieName'] as String,
      backgroundColor: data['backgroundColor'] as String,
      help: help,
      steps: steps,
    );
  }
}
