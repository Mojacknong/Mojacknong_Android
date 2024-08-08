import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_open_diary_model.freezed.dart';
part 'farmclub_open_diary_model.g.dart';

@freezed
class FarmclubOpenDiaryModel with _$FarmclubOpenDiaryModel {
  const factory FarmclubOpenDiaryModel({
    required int diaryId,
    required String diaryImage,
    required String diaryContent,
    required String writeDateTime,
    required int likeCount,
    required int commentCount,
    required String nickname,
    String? profileImage,
    required bool myLike,
    required String state,
  }) = _FarmclubOpenDiaryModel;

  factory FarmclubOpenDiaryModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubOpenDiaryModelFromJson(json);
}
