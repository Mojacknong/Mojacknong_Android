import 'package:freezed_annotation/freezed_annotation.dart';

part 'veggie_diary_model.freezed.dart';
part 'veggie_diary_model.g.dart';

@freezed
class VeggieDiaryOneModel with _$VeggieDiaryOneModel {
  const factory VeggieDiaryOneModel({
    String? image,
    String? content,
    String? date,
  }) = _VeggieDiaryModel;

  factory VeggieDiaryOneModel.fromJson(Map<String, dynamic> json) =>
      _$VeggieDiaryOneModelFromJson(json);
}
