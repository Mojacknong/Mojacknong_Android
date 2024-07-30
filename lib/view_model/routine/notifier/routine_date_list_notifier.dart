import 'dart:convert';

import 'package:farmus/model/routine/routine_date_list_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_date_list_notifier.g.dart';

@riverpod
Future<List<RoutineDateListModel>> routineDateListModel(RoutineDateListModelRef ref) async {
  const date = '2024-07-31';
  final response = await RoutineRepository.routineDateList(date);


  final json = jsonDecode(response);
  final List<dynamic> dataList = json['data'];

  final List<RoutineDateListModel> routineList =
      dataList.map((item) => RoutineDateListModel.fromJson(item)).toList();

  return routineList;
}
