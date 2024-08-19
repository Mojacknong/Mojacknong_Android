import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/diary/diary_check_model.dart';
import '../../repository/my_veggie_garden_repository.dart';
import '../my_vege/notifier/my_veggie_list.dart';

part 'diary_check_notifier.g.dart';

@riverpod
Future<DiaryCheckModel> diaryCheckModel(
    DiaryCheckModelRef ref, int? myVeggieId) async {
  if (myVeggieId == null) {
    final veggieList = await ref.watch(myVeggieListModelProvider.future);
    if (veggieList.isNotEmpty) {
      myVeggieId = veggieList.first.myVeggieId.toInt();
    }
  }

  final response = await MyVeggieGardenRepository.diaryCheck(myVeggieId!);
  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return DiaryCheckModel.fromJson(data);
}
