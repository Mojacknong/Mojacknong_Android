import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_farmclub_history_model.freezed.dart';
part 'my_farmclub_history_model.g.dart';

@freezed
class MyFarmclubHistoryModel with _$MyFarmclubHistoryModel {
  const factory MyFarmclubHistoryModel({
    required String detailId,
    required String image,
    required String historyName,
    required String name,
    required String period,

  }) = _MyFarmclubHistoryModel;

  factory MyFarmclubHistoryModel.fromJson(Map<String, dynamic> json) => _$MyFarmclubHistoryModelFromJson(json);
}
