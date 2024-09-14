// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_post_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionPostReportModelImpl _$$MissionPostReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MissionPostReportModelImpl(
      missionPostId: (json['missionPostId'] as num).toInt(),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$MissionPostReportModelImplToJson(
        _$MissionPostReportModelImpl instance) =>
    <String, dynamic>{
      'missionPostId': instance.missionPostId,
      'reason': instance.reason,
    };
