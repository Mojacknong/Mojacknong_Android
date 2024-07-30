import 'dart:convert';

import 'package:farmus/model/routine/routine_month_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/routine_repository.dart';

part 'routine_month_list_notifier.g.dart';

@riverpod
Future<RoutineMonthListModel> routineMonthListModel(
    RoutineMonthListModelRef ref) async {
  const month = '2024-01';
  final response = await RoutineRepository.routineMonthList(month);
  final json = jsonDecode(response) as Map<String, dynamic>;

  final data = json['data'] as Map<String, dynamic>;

  return RoutineMonthListModel.fromJson(json);
}
