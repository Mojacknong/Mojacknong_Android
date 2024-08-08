import 'dart:convert';

import 'package:farmus/model/diary/farmclub_open_diary_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/my_farmclub/my_farmclub_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_open_diary_notifier.g.dart';

@riverpod
Future<List<FarmclubOpenDiaryModel>> farmclubOpenDiaryModel(
    FarmclubOpenDiaryModelRef ref, int? farmclubId) async {
  if (farmclubId == null) {
    final farmclubList = await ref.watch(myFarmclubModelProvider.future);
    farmclubId = farmclubList.first.farmClubId.toInt();
  }

  final response = await MyVeggieGardenRepository.farmclubDiaryAll(farmclubId);

  final json = jsonDecode(response);
  final List<dynamic> dataList = json['data'];

  final List<FarmclubOpenDiaryModel> farmclubOpenDiaryList =
      dataList.map((item) => FarmclubOpenDiaryModel.fromJson(item)).toList();

  return farmclubOpenDiaryList;
}
