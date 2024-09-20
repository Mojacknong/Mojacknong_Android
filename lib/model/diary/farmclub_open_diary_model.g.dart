// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_open_diary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubOpenDiaryModelImpl _$$FarmclubOpenDiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubOpenDiaryModelImpl(
      diaryId: (json['diaryId'] as num).toInt(),
      diaryImage: json['diaryImage'] as String,
      diaryContent: json['diaryContent'] as String,
      writeDateTime: json['writeDateTime'] as String,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String?,
      myLike: json['myLike'] as bool,
      myDiary: json['myDiary'] as bool,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$FarmclubOpenDiaryModelImplToJson(
        _$FarmclubOpenDiaryModelImpl instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'diaryImage': instance.diaryImage,
      'diaryContent': instance.diaryContent,
      'writeDateTime': instance.writeDateTime,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
      'myLike': instance.myLike,
      'myDiary': instance.myDiary,
      'state': instance.state,
    };
