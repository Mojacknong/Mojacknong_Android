import 'dart:convert';

import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/my_vege/my_veggie_info_model.dart';

part 'my_veggie_info_notifier.g.dart';

@riverpod
Future<List<MyVeggieInfoModel>> myVeggieInfo(MyVeggieInfoRef ref) async {
  final response = await MyVeggieGardenRepository.myVeggieInfoList();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  return dataList
      .map((data) => MyVeggieInfoModel.fromJson(data as Map<String, dynamic>))
      .toList();
}
