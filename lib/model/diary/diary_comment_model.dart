import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_comment_model.freezed.dart';
part 'diary_comment_model.g.dart';

@freezed
class DiaryCommentModel with _$DiaryCommentModel {
  const factory DiaryCommentModel({
    required bool myComment,
    required String content,
    required String date,
    required String nickname,
    required String profileImage,
  }) = _DiaryCommentModel;

  factory DiaryCommentModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryCommentModelFromJson(json);
}
