import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/my_vege/my_veggie_diary.dart';
import '../../../repository/my_veggie_garden_repository.dart';

part 'my_veggie_diary.g.dart';

@riverpod
Future<List<MyVeggieDiary>> myVeggieDiary(
    MyVeggieDiaryRef ref, String myVeggieId) async {
  final response = await MyVeggieGardenRepository.myVeggieDiaryAll(myVeggieId);
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  return dataList
      .map((data) => MyVeggieDiary.fromJson(data as Map<String, dynamic>))
      .toList();
}
