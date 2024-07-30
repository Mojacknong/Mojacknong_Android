import 'package:farmus/model/routine/my_veggie_routine_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_date_list_model.freezed.dart';
part 'routine_date_list_model.g.dart';

@freezed
class RoutineDateListModel with _$RoutineDateListModel {
  const factory RoutineDateListModel({
    required String nickname,
    required String veggieName,
    required List<MyVeggieRoutineInfoModel> myVeggieRoutineList,
  }) = _RoutineDateListModel;

  factory RoutineDateListModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineDateListModelFromJson(json);
}