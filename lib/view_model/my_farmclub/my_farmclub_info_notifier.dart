import 'dart:convert';

import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_farmclub_info_notifier.g.dart';

@riverpod
Future<List<MyFarmclubInfoModel>> myFarmclubInfoModel(
    MyFarmclubInfoModelRef ref) async {
  final response = await MyFarmclubRepository.myFarmclub();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  final List<MyFarmclubInfoModel> farmclub = dataList
      .map((data) => MyFarmclubInfoModel.fromJson(data as Map<String, dynamic>))
      .toList();
  return farmclub;
}
