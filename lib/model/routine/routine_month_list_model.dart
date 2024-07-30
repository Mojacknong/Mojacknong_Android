import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_month_list_model.freezed.dart';
part 'routine_month_list_model.g.dart';

@freezed
class RoutineMonthListModel with _$RoutineMonthListModel {
  const factory RoutineMonthListModel({
    required List<String> date,
  }) = _RoutineMonthListModel;

  factory RoutineMonthListModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineMonthListModelFromJson(json);
}
