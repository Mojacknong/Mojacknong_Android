// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionFeedImpl _$$MissionFeedImplFromJson(Map<String, dynamic> json) =>
    _$MissionFeedImpl(
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

Map<String, dynamic> _$$MissionFeedImplToJson(_$MissionFeedImpl instance) =>
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
