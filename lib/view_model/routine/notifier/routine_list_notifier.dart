import 'dart:convert';

import 'package:farmus/model/routine/routine_list_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_list_notifier.g.dart';

@riverpod
Future<List<RoutineListModel>> routineListModel(RoutineListModelRef ref) async {
  final response = await RoutineRepository.routineList();


  final json = jsonDecode(response);
  final List<dynamic> dataList = json['data'];

  final List<RoutineListModel> routineList =
      dataList.map((item) => RoutineListModel.fromJson(item)).toList();

  return routineList;
}
