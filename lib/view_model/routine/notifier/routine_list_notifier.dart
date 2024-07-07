import 'dart:convert';

import 'package:farmus/model/routine/routine_list_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_list_notifier.g.dart';

@riverpod
Future<RoutineListModel> routineListModel(RoutineListModelRef ref) async {
  final response = await RoutineRepository.routineList();

  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  final RoutineListModel routineList = RoutineListModel.fromJson(data);
  return routineList;
}
