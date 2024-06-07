import 'dart:convert';

import 'package:farmus/model/home/veggie_diary_one_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/my_veggie_garden_repository.dart';

part 'veggie_diary_one_notifier.g.dart';

@riverpod
Future<VeggieDiaryOneModel?> veggieDiaryOneModel(
    VeggieDiaryOneModelRef ref, int myVeggieId) async {
  final response = await MyVeggieGardenRepository.myVeggieDiaryOne(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  if (json['code'] == 3000) {
    return null;
  }
  final data = json['data'] as Map<String, dynamic>;

  return VeggieDiaryOneModel.fromJson(data);
}
