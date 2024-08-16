import 'dart:convert';

import 'package:farmus/model/veggie_history/my_veggie_history_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/my_history_repository.dart';

part 'my_veggie_history_notifier.g.dart';

@riverpod
Future<List<MyVeggieHistoryModel>> myVeggieHistoryModel(MyVeggieHistoryModelRef ref) async {
  final response = await MyHistoryRepository.myVeggieHistory();
  final json = jsonDecode(response) as Map<String, dynamic>;

  if (json['code'] == 200) {
    final data = json['data'] as Map<String, dynamic>;
    final dataList = data['veggieHistoryList'] as List<dynamic>;

    final List<MyVeggieHistoryModel> veggieHistory = dataList
        .map((data) => MyVeggieHistoryModel.fromJson(data as Map<String, dynamic>))
        .toList();

    return veggieHistory;
  } else {
    throw Exception('Failed to load veggie history');
  }
}
