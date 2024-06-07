import 'dart:convert';

import 'package:farmus/repository/my_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub/my_farmclub_model.dart';

part 'my_farmclub_notifier.g.dart';

@riverpod
Future<List<MyFarmclubModel>> myFarmclubModel(MyFarmclubModelRef ref) async {
  final response = await MyFarmclubRepository.myFarmclub();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  final List<MyFarmclubModel> farmclub = dataList
      .map((data) => MyFarmclubModel.fromJson(data as Map<String, dynamic>))
      .toList();
  return farmclub;
}
