import 'dart:convert';

import 'package:farmus/model/home/veggie_diary_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/my_veggie_garden_repository.dart';
part 'veggie_diary_one_notifier.g.dart';

@riverpod
Future<VeggieDiaryModel> veggieDiaryModel(
    VeggieDiaryModelRef ref, String myVeggieId) async {
  final response = await MyVeggieGardenRepository.myVeggieDiaryOne(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return VeggieDiaryModel.fromJson(data);
}
