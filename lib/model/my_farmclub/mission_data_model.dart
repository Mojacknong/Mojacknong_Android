import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_data_model.freezed.dart';
part 'mission_data_model.g.dart';

@freezed
class MissionDataModel with _$MissionDataModel {
  const factory MissionDataModel({
    required bool isMyPost,
    required List<MissionCommentModel> comments,
  }) = _MissionDataModel;

  factory MissionDataModel.fromJson(Map<String, dynamic> json) => _$MissionDataModelFromJson(json);
}

@freezed
class MissionCommentModel with _$MissionCommentModel {
  const factory MissionCommentModel({
    required int missionPostCommentId,
    required String nickname,
    required String profileImage,
    required String date,
    required String content,
    required bool isMyComment,
  }) = _MissionCommentModel;

  factory MissionCommentModel.fromJson(Map<String, dynamic> json) => _$MissionCommentModelFromJson(json);
}
