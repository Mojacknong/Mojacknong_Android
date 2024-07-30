import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_routine_info_model.freezed.dart';
part 'my_veggie_routine_info_model.g.dart';

@freezed
class MyVeggieRoutineInfoModel with _$MyVeggieRoutineInfoModel {
  const factory MyVeggieRoutineInfoModel({
    required bool check,
    required String content,
    required int period,
    required int routineId,
  }) = _MyVeggieRoutineInfoModel;

  factory MyVeggieRoutineInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieRoutineInfoModelFromJson(json);
}
