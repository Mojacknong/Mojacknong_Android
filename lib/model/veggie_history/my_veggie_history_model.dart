import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_history_model.freezed.dart';

part 'my_veggie_history_model.g.dart';

@freezed
class MyVeggieHistoryModel with _$MyVeggieHistoryModel {
  const factory MyVeggieHistoryModel({
    required String detailId,
    required String image,
    required String historyName,
    required String backgroundColor,
    required String name,
    required String period,
  }) = _MyVeggieHistoryModel;

  factory MyVeggieHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieHistoryModelFromJson(json);
}
