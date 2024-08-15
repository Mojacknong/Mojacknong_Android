import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/my_farmclub_history/my_farmclub_history_model.dart';
import '../../repository/my_history_repository.dart';

part 'my_farmclub_history_notifier.g.dart';

@riverpod
Future<List<MyFarmclubHistoryModel>> myFarmclubHistoryModel(MyFarmclubHistoryModelRef ref) async {
  final response = await MyHistoryRepository.myFarmclubHistory();
  final json = jsonDecode(response) as Map<String, dynamic>;

  if (json['code'] == 200) {
    final data = json['data'] as Map<String, dynamic>;
    final dataList = data['farmClubHistoryList'] as List<dynamic>;

    final List<MyFarmclubHistoryModel> farmclubHistory = dataList
        .map((data) => MyFarmclubHistoryModel.fromJson(data as Map<String, dynamic>))
        .toList();

    return farmclubHistory;
  } else {
    throw Exception('Failed to load farmclub history');
  }
}
