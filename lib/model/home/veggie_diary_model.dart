import 'package:freezed_annotation/freezed_annotation.dart';

part 'veggie_diary_model.freezed.dart';
part 'veggie_diary_model.g.dart';

@freezed
class VeggieDiaryModel with _$VeggieDiaryModel {
  const factory VeggieDiaryModel({
    String? image,
    String? content,
    String? date,
  }) = _VeggieDiaryModel;

  factory VeggieDiaryModel.fromJson(Map<String, dynamic> json) =>
      _$VeggieDiaryModelFromJson(json);
}
