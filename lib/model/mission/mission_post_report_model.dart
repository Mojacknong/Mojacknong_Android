import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_post_report_model.freezed.dart';
part 'mission_post_report_model.g.dart';

@freezed
class MissionPostReportModel with _$MissionPostReportModel {
  const factory MissionPostReportModel({
    required int missionPostId,
    required String reason,
  }) = _MissionPostReportModel;

  factory MissionPostReportModel.fromJson(Map<String, dynamic> json) =>
      _$MissionPostReportModelFromJson(json);
}
