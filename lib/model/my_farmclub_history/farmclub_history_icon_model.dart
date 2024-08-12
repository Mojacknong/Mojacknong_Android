import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_history_icon_model.freezed.dart';
part 'farmclub_history_icon_model.g.dart';

@freezed
class FarmclubHistoryIconModel with _$FarmclubHistoryIconModel {
  const factory FarmclubHistoryIconModel({
    required String url,
    required String backgroundColor,
  }) = _FarmclubHistoryIconModel;

  factory FarmclubHistoryIconModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubHistoryIconModelFromJson(json);
}
