import 'dart:convert';

import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:farmus/view_model/my_farmclub/my_farmclub_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_farmclub_info_notifier.g.dart';

@riverpod
Future<MyFarmclubInfoModel> myFarmclubInfoModel(
    MyFarmclubInfoModelRef ref, int? farmclubId) async {
  if (farmclubId == null) {
    final farmclubs = await ref.watch(myFarmclubModelProvider.future);
    farmclubId = farmclubs.first.farmClubId.toInt();
  }

  final response = await MyFarmclubRepository.myFarmclubInfo(farmclubId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  final MyFarmclubInfoModel farmclub = MyFarmclubInfoModel.fromJson(data);
  return farmclub;
}
