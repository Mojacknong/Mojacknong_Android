import 'package:freezed_annotation/freezed_annotation.dart';

part 'motivation_message_model.freezed.dart';
part 'motivation_message_model.g.dart';

@freezed
class MotivationMessageModel with _$MotivationMessageModel {
  const factory MotivationMessageModel({
    required String encouragementMessage,
  }) = _MotivationMessageModel;

  factory MotivationMessageModel.fromJson(Map<String, dynamic> json) =>
      _$MotivationMessageModelFromJson(json);
}
