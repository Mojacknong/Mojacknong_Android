import 'package:freezed_annotation/freezed_annotation.dart';

part 'veggie_history_icon_model.freezed.dart';
part 'veggie_history_icon_model.g.dart';

@freezed
class VeggieHistoryIconModel with _$VeggieHistoryIconModel {
  const factory VeggieHistoryIconModel({
    required String url,
    required String backgroundColor,
  }) = _VeggieHistoryIconModel;

  factory VeggieHistoryIconModel.fromJson(Map<String, dynamic> json) =>
      _$VeggieHistoryIconModelFromJson(json);
}
