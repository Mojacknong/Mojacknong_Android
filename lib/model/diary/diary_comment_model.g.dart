// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiaryDataModelImpl _$$DiaryDataModelImplFromJson(Map<String, dynamic> json) =>
    _$DiaryDataModelImpl(
      diaryCommentContent: (json['diaryCommentContent'] as List<dynamic>)
          .map((e) => DiaryCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      myLike: json['myLike'] as bool,
    );

Map<String, dynamic> _$$DiaryDataModelImplToJson(
        _$DiaryDataModelImpl instance) =>
    <String, dynamic>{
      'diaryCommentContent': instance.diaryCommentContent,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'myLike': instance.myLike,
    };

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
