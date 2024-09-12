// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionUserListModelImpl _$$MissionUserListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MissionUserListModelImpl(
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String,
    );

Map<String, dynamic> _$$MissionUserListModelImplToJson(
        _$MissionUserListModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
    };
