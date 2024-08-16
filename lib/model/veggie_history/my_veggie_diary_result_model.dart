import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_diary_result_model.freezed.dart';
part 'my_veggie_diary_result_model.g.dart';

@freezed
class MyVeggieDiaryResultModel with _$MyVeggieDiaryResultModel {
  const factory MyVeggieDiaryResultModel({
    required List<Diary> diaries,
    required FarmResult farmResult,
  }) = _MyVeggieDiaryResultModel;

  factory MyVeggieDiaryResultModel.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieDiaryResultModelFromJson(json);
}

@freezed
class Diary with _$Diary {
  const factory Diary({
    required String postImage,
    required String content,
    required String dateTime,
  }) = _Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}

@freezed
class FarmResult with _$FarmResult {
  const factory FarmResult({
    required String postImage,
    required String content,
    required String dateTime,
  }) = _FarmResult;

  factory FarmResult.fromJson(Map<String, dynamic> json) =>
      _$FarmResultFromJson(json);
}
