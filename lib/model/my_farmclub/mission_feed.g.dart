// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionFeedImpl _$$MissionFeedImplFromJson(Map<String, dynamic> json) =>
    _$MissionFeedImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: MissionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MissionFeedImplToJson(_$MissionFeedImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$MissionDataImpl _$$MissionDataImplFromJson(Map<String, dynamic> json) =>
    _$MissionDataImpl(
      missionPosts: (json['missionPosts'] as List<dynamic>)
          .map((e) => MissionPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MissionDataImplToJson(_$MissionDataImpl instance) =>
    <String, dynamic>{
      'missionPosts': instance.missionPosts,
    };

_$MissionPostImpl _$$MissionPostImplFromJson(Map<String, dynamic> json) =>
    _$MissionPostImpl(
      missionPostId: (json['missionPostId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String,
      date: DateTime.parse(json['date'] as String),
      image: json['image'] as String,
      content: json['content'] as String,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$$MissionPostImplToJson(_$MissionPostImpl instance) =>
    <String, dynamic>{
      'missionPostId': instance.missionPostId,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
      'date': instance.date.toIso8601String(),
      'image': instance.image,
      'content': instance.content,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'isLiked': instance.isLiked,
    };
