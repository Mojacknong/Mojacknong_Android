import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/veggie_history/my_veggie_diary_result_model.dart';
import '../../repository/my_history_repository.dart';

part 'my_veggie_diary_result_provider.g.dart';

@riverpod
Future<MyVeggieDiaryResultModel> myVeggieDiaryResultModel(
    MyVeggieDiaryResultModelRef ref, String id) async {
  final response = await MyHistoryRepository.veggieDiaryResultDetail(id);
  return response;
}

