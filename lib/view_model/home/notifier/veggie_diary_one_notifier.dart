import 'dart:convert';

import 'package:farmus/model/home/veggie_diary_one_model.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/my_veggie_garden_repository.dart';

part 'veggie_diary_one_notifier.g.dart';

@riverpod
Future<VeggieDiaryOneModel?> veggieDiaryOneModel(
    VeggieDiaryOneModelRef ref, int? myVeggieId) async {
  if (myVeggieId == null) {
    final veggieList = await ref.watch(myVeggieListModelProvider.future);
    if (veggieList.isNotEmpty) {
      myVeggieId = veggieList.first.myVeggieId.toInt();
    } else {
      return null;
    }
  }

  final response = await MyVeggieGardenRepository.myVeggieDiaryOne(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;
  if (json['code'] == 3000) {
    return null;
  }
  final data = json['data'] as Map<String, dynamic>;

  return VeggieDiaryOneModel.fromJson(data);
}
