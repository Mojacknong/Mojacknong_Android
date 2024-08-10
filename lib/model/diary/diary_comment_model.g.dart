// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiaryCommentModelImpl _$$DiaryCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiaryCommentModelImpl(
      myComment: json['myComment'] as bool,
      content: json['content'] as String,
      date: json['date'] as String,
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String?,
      commentId: (json['commentId'] as num).toInt(),
    );

Map<String, dynamic> _$$DiaryCommentModelImplToJson(
        _$DiaryCommentModelImpl instance) =>
    <String, dynamic>{
      'myComment': instance.myComment,
      'content': instance.content,
      'date': instance.date,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
      'commentId': instance.commentId,
    };
