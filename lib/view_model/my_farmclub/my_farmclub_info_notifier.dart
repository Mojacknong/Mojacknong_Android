import 'dart:convert';

import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'my_farmclub_notifier.dart';

part 'my_farmclub_info_notifier.g.dart';

@riverpod
Future<MyFarmclubInfoModel> myFarmclubInfoModel(
    MyFarmclubInfoModelRef ref) async {
  final farmclubs = await ref.watch(myFarmclubModelProvider.future);

  if (farmclubs.isEmpty) {
    throw Exception("No farmclubs available");
  }

  final farmclubId = farmclubs.first.farmClubId;
  final response = await MyFarmclubRepository.myFarmclubInfo(farmclubId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  final MyFarmclubInfoModel farmclub = MyFarmclubInfoModel.fromJson(data);
  return farmclub;
}
