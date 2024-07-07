import 'dart:convert';

import 'package:farmus/model/routine/my_veggie_routine_info_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_veggie_routine_info_notifier.g.dart';

@riverpod
Future<MyVeggieRoutineInfoModel> myVeggieRoutineInfoModel(
    MyVeggieRoutineInfoModelRef ref, int? myVeggieId) async {
  if (myVeggieId == null) {
    final veggieList = await ref.watch(myVeggieListModelProvider.future);
    myVeggieId = veggieList.first.myVeggieId.toInt();
  }

  final response = await RoutineRepository.myVeggieRoutineInfo(myVeggieId);

  final json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  final MyVeggieRoutineInfoModel myVeggieRoutineInfo =
      MyVeggieRoutineInfoModel.fromJson(data);
  return myVeggieRoutineInfo;
}
