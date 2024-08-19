import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_check_model.freezed.dart';
part 'diary_check_model.g.dart';

@freezed
class DiaryCheckModel with _$DiaryCheckModel {
  const factory DiaryCheckModel({
    required bool state,
  }) = _DiaryCheckModel;

  factory DiaryCheckModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryCheckModelFromJson(json);
}
