// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionDataModelImpl _$$MissionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MissionDataModelImpl(
      isMyPost: json['isMyPost'] as bool,
      comments: (json['comments'] as List<dynamic>)
          .map((e) => MissionCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MissionDataModelImplToJson(
        _$MissionDataModelImpl instance) =>
    <String, dynamic>{
      'isMyPost': instance.isMyPost,
      'comments': instance.comments,
    };

_$MissionCommentModelImpl _$$MissionCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MissionCommentModelImpl(
      missionPostCommentId: (json['missionPostCommentId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
      isMyComment: json['isMyComment'] as bool,
    );

Map<String, dynamic> _$$MissionCommentModelImplToJson(
        _$MissionCommentModelImpl instance) =>
    <String, dynamic>{
      'missionPostCommentId': instance.missionPostCommentId,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
      'date': instance.date,
      'content': instance.content,
      'isMyComment': instance.isMyComment,
    };
