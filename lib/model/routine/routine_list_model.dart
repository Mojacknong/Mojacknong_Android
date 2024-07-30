import 'package:farmus/model/routine/my_veggie_routine_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_list_model.freezed.dart';
part 'routine_list_model.g.dart';

@freezed
class RoutineListModel with _$RoutineListModel {
  const factory RoutineListModel({
    required String nickname,
    required String veggieName,
    required List<MyVeggieRoutineInfoModel> myVeggieRoutineList,
  }) = _RoutineListModel;

  factory RoutineListModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineListModelFromJson(json);
}