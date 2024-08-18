import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_comment_model.freezed.dart';
part 'diary_comment_model.g.dart';

@freezed
class DiaryDataModel with _$DiaryDataModel {
  const factory DiaryDataModel({
    required List<DiaryCommentModel> diaryCommentContent,
    required int likeCount,
    required int commentCount,
    required bool myLike,
  }) = _DiaryDataModel;

  factory DiaryDataModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryDataModelFromJson(json);
}

@freezed
class DiaryCommentModel with _$DiaryCommentModel {
  const factory DiaryCommentModel({
    required bool myComment,
    required String content,
    required String date,
    required String nickname,
    required String? profileImage,
    required int commentId,
  }) = _DiaryCommentModel;

  factory DiaryCommentModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryCommentModelFromJson(json);
}
