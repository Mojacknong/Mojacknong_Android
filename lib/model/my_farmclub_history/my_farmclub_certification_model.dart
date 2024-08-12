import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_farmclub_certification_model.freezed.dart';
part 'my_farmclub_certification_model.g.dart';

@freezed
class MyFarmclubCertificationModel with _$MyFarmclubCertificationModel {
  const factory MyFarmclubCertificationModel({
    required List<MissionPost> missionPosts,
  }) = _MyFarmclubCertificationModel;

  factory MyFarmclubCertificationModel.fromJson(Map<String, dynamic> json) =>
      _$MyFarmclubCertificationModelFromJson(json);
}

@freezed
class MissionPost with _$MissionPost {
  const factory MissionPost({
    required int stepNum,
    required String stepName,
    required String postImage,
    required String content,
    required String date,
  }) = _MissionPost;

  factory MissionPost.fromJson(Map<String, dynamic> json) => _$MissionPostFromJson(json);
}