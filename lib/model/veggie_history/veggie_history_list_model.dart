import 'package:freezed_annotation/freezed_annotation.dart';

part 'veggie_history_list_model.freezed.dart';

part 'veggie_history_list_model.g.dart';

@freezed
class VeggieHistoryListModel with _$VeggieHistoryListModel {
  const factory VeggieHistoryListModel({
    required String detailId,
    required String image,
    required String historyName,
    required String name,
    required String period,
  }) = _VeggieHistoryListModel;

  factory VeggieHistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$VeggieHistoryListModelFromJson(json);
}
