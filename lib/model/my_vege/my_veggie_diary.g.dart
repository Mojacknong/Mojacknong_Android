// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieDiaryImpl _$$MyVeggieDiaryImplFromJson(Map<String, dynamic> json) =>
    _$MyVeggieDiaryImpl(
      date: json['date'] as String,
      image: json['image'] as String,
      content: json['content'] as String,
      state: json['state'] as String,
      isOpen: json['isOpen'] as bool,
      diaryId: (json['diaryId'] as num).toInt(),
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      myLike: json['myLike'] as bool,
    );

Map<String, dynamic> _$$MyVeggieDiaryImplToJson(_$MyVeggieDiaryImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'image': instance.image,
      'content': instance.content,
      'state': instance.state,
      'isOpen': instance.isOpen,
      'diaryId': instance.diaryId,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'myLike': instance.myLike,
    };
